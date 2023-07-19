import 'dart:io';

import 'package:background_download_demo/models/download_task_model.dart';
import 'package:background_downloader/background_downloader.dart';
import 'package:path_provider/path_provider.dart';

extension TaskStatusExt on TaskStatus {
  DownloadTaskStatus toStatus() {
    switch (this) {
      case TaskStatus.enqueued || TaskStatus.running:
        return DownloadTaskStatus.running;
      case TaskStatus.paused:
        return DownloadTaskStatus.pause;
      case TaskStatus.complete:
        return DownloadTaskStatus.completed;
      case TaskStatus.canceled:
        return DownloadTaskStatus.stop;
      default:
        return DownloadTaskStatus.error;
    }
  }
}

class BackgroundDownloaderService {
  static int toPercentageProgress(double downloaderProgress) {
    return (downloaderProgress * 100).toInt();
  }

  static DownloadTaskStatus combineStatus(Iterable<DownloadTaskStatus> input) {
    if (input.contains(DownloadTaskStatus.error)) {
      return DownloadTaskStatus.error;
    }
    if (input.every((element) => element == DownloadTaskStatus.notStarted)) {
      return DownloadTaskStatus.notStarted;
    }
    if (input.contains(DownloadTaskStatus.pause)) {
      return DownloadTaskStatus.pause;
    }
    return DownloadTaskStatus.running;
  }

  static Future<void> removeFileFromTask(Task task) async {
    final baseDir = await _getPathFromBaseDirectory(task.baseDirectory);
    final fullPath = '${baseDir.path}${task.directory}/${task.filename}';
    File file = File(fullPath);
    final exist = file.existsSync();
    if (exist) file.delete();
  }

  static Future<Directory> _getPathFromBaseDirectory(BaseDirectory dir) async {
    switch (dir) {
      case BaseDirectory.applicationDocuments:
        return await getApplicationDocumentsDirectory();
      case BaseDirectory.applicationLibrary:
        return await getLibraryDirectory();
      case BaseDirectory.applicationSupport:
        return await getApplicationSupportDirectory();
      case BaseDirectory.temporary:
        return await getTemporaryDirectory();
    }
  }
}
