import 'package:freezed_annotation/freezed_annotation.dart';

part 'download_task_model.freezed.dart';

@freezed
class DownloadTaskModel with _$DownloadTaskModel {
  const factory DownloadTaskModel({
    required String id,
    required String url,
    required DownloadTaskStatus status,
    required int progress,
  }) = _DownloadTaskModel;

  factory DownloadTaskModel.init({required String id, required String url}) {
    return DownloadTaskModel(
      id: id,
      url: url,
      status: DownloadTaskStatus.undefined,
      progress: 0,
    );
  }
}

enum DownloadTaskStatus {
  undefined,
  notStarted,
  error,
  pause,
  stop,
  running,
  completed,
}
