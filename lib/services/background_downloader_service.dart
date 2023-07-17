import 'package:background_download_demo/models/download_task_model.dart';
import 'package:background_downloader/background_downloader.dart';

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
}
