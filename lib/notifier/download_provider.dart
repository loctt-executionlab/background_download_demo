import 'package:background_downloader/background_downloader.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rxdart/subjects.dart';
part 'download_provider.g.dart';

@riverpod
FileDownloader backgroundDownload(BackgroundDownloadRef ref) {
  final downloader = FileDownloader();
  downloader.trackTasks();
  ref.onDispose(() => downloader.destroy());
  return downloader;
}

final fDownloader = FileDownloader();

final fDownloaderStream = fDownloader.updates.asBroadcastStream();

@riverpod
BehaviorSubject<TaskUpdate> statusUpdate(StatusUpdateRef ref) {
  final stream = BehaviorSubject<TaskUpdate>();

  ref.watch(backgroundDownloadProvider).updates.listen((update) {
    if (update is TaskStatusUpdate) {
      debugPrint(
          'Status update for ${update.task.filename} with status ${update.status}');
    } else if (update is TaskProgressUpdate) {
      debugPrint(
          'Progress update for ${update.task.filename} with progress ${update.progress} '
          'and expected file size ${update.expectedFileSize}');
    }
    stream.add(update);
    print('event coming');
  });

  return stream;
}
