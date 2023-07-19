import 'package:background_download_demo/models/download_task_model.dart';
import 'package:background_download_demo/models/video_model.dart';
import 'package:background_download_demo/notifier/download_status_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VideoEntry extends ConsumerWidget {
  const VideoEntry({Key? key, required this.video}) : super(key: key);

  final Video video;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final task = ref.watch(downloadStatusNotifierProvider(video));

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(video.name),
            ],
          ),
          Row(
            children: [
              Text('${task.progress.toString()} | ${task.status.name}'),
            ],
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    ref
                        .read(downloadStatusNotifierProvider(video).notifier)
                        .download();
                  },
                  icon: const Icon(Icons.download)),
              IconButton(
                  onPressed: () {
                    ref
                        .read(downloadStatusNotifierProvider(video).notifier)
                        .pause();
                  },
                  icon: const Icon(Icons.pause)),
              IconButton(
                  onPressed: () {
                    ref
                        .read(downloadStatusNotifierProvider(video).notifier)
                        .resume();
                  },
                  icon: const Icon(Icons.play_arrow)),
              IconButton(
                  onPressed: () {
                    ref
                        .read(downloadStatusNotifierProvider(video).notifier)
                        .cancel();
                  },
                  icon: const Icon(Icons.stop)),
              IconButton(
                  onPressed: () {
                    ref
                        .read(downloadStatusNotifierProvider(video).notifier)
                        .delete();
                  },
                  icon: const Icon(Icons.delete)),
            ],
          )
        ],
      ),
    );
  }
}
