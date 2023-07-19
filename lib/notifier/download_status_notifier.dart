import 'package:background_download_demo/models/download_task_model.dart';
import 'package:background_download_demo/models/video_model.dart';
import 'package:background_download_demo/notifier/download_provider.dart';
import 'package:background_download_demo/services/background_downloader_service.dart';
import 'package:background_downloader/background_downloader.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'download_status_notifier.g.dart';

@riverpod
class DownloadStatusNotifier extends _$DownloadStatusNotifier {
  FileDownloader get downloader => ref.watch(backgroundDownloadProvider);

  Stream<TaskUpdate> get updateStream => ref.watch(statusUpdateProvider);

  final stream = fDownloaderStream;
  @override
  DownloadTaskModel build(Video video) {
    // state = DownloadTaskModel.init(id: video.id, url: video.url);
    _fetchInitialTaskState();
    updateStream.listen((event) {
      _onProgressChanged(event);
    });
    return DownloadTaskModel.init(id: video.id, url: video.url);
  }

  Future<bool> download() async {
    final task = DownloadTask(
        url: video.url,
        taskId: video.id,
        updates: Updates.statusAndProgress,
        filename: '${video.id}.mp4',
        baseDirectory: BaseDirectory.applicationDocuments);
    final successfullyEnqueued = await downloader.enqueue(task);
    if (!successfullyEnqueued) return false;
    return true;
  }

  Future<bool> cancel() async {
    // cancel can becall when not done or downloading
    // need more investigation
    final result = await downloader.cancelTaskWithId(video.id);
    if (!result) return false;
    // reset state to not downloaded
    // state = state.copyWith(progress: 0, status: DownloadTaskStatus.notStarted);
    return true;
  }

  Future<void> delete() async {
    if (state.status != DownloadTaskStatus.completed) return;
    print(state.id);
    final task = await downloader.database.recordForId(state.id);
    print(task);
    if (task == null) return;
    await Future.wait([
      BackgroundDownloaderService.removeFileFromTask(task.task),
      downloader.database.deleteRecordWithId(state.id),
    ]);
  }

  Future<bool> pause() async {
    final task = await downloader.taskForId(video.id);
    if (task == null) return false;
    final result =
        await downloader.pause(DownloadTask(url: video.url, taskId: video.id));
    return result;
  }

  Future<bool> resume() async {
    final task = await downloader.taskForId(video.id);
    if (task == null) return false;
    final result =
        await downloader.resume(DownloadTask(url: video.url, taskId: video.id));
    return result;
  }

  refreshStatus() async {
    final record = await downloader.database.allRecords();
    print('record count ${record.length} ${record[0].task.baseDirectory}');
    return;
  }

  Future<void> _fetchInitialTaskState() async {
    final record = await downloader.database.recordForId(video.id);
    if (record == null) {
      state = DownloadTaskModel.init(id: video.id, url: video.url);
      return;
    }
    state = DownloadTaskModel(
      id: video.id,
      url: record.task.url,
      progress:
          BackgroundDownloaderService.toPercentageProgress(record.progress),
      status: record.status.toStatus(),
    );
  }

  _onProgressChanged(TaskUpdate update) {
    if (update.task.url != state.url) return;
    if (update is TaskStatusUpdate) {
      state = state.copyWith(status: update.status.toStatus());
    } else if (update is TaskProgressUpdate) {
      state = state.copyWith(
          progress: BackgroundDownloaderService.toPercentageProgress(
              update.progress));
      // note: expectedFileSize is only valid if 0 < progress < 1. It is -1 otherwise
    }
  }
}
