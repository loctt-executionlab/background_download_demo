import 'package:background_download_demo/models/download_task_model.dart';
import 'package:background_download_demo/models/video_model.dart';
import 'package:background_download_demo/notifier/download_status_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'multi_download_status_notifier.g.dart';

@riverpod
class MultiDownloadstatusNotifier extends _$MultiDownloadstatusNotifier {
  @override
  Map<String, DownloadTaskModel> build(MultipleVideo videos) {
    state = {
      for (var video in videos.videos)
        video.id: ref.watch(downloadStatusNotifierProvider(video))
    };
    return state;
  }
}
