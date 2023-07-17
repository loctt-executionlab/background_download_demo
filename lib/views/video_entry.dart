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
    print('ui progress ${task.progress}');

    return Column(
      children: [
        Row(
          children: [
            Text(video.name),
            const Spacer(),
            Text(task.progress.toString()),
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
                      .cancel();
                },
                icon: const Icon(Icons.remove)),
            IconButton(
                onPressed: () {
                  ref
                      .read(downloadStatusNotifierProvider(video).notifier)
                      .refreshStatus();
                },
                icon: const Icon(Icons.remove)),
          ],
        )
      ],
    );
  }
}
