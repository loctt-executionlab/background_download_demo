import 'package:background_download_demo/models/video_model.dart';
import 'package:background_download_demo/notifier/download_status_notifier.dart';
import 'package:background_download_demo/notifier/multi_download_status_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MultipleVideoEntry extends ConsumerWidget {
  const MultipleVideoEntry({Key? key, required this.multiVideo})
      : super(key: key);

  final MultipleVideo multiVideo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final task = ref.watch(multiDownloadstatusNotifierProvider(multiVideo));
    // print('ui progress ${task.progress}');

    return Column(
      children: [
        ...task.entries
            .map(
              (e) => Row(
                children: [
                  Text(e.value.id, overflow: TextOverflow.clip, maxLines: 3),
                  const Spacer(),
                  Text(e.value.progress.toString()),
                ],
              ),
            )
            .toList(),
        Row(
          children: [
            IconButton(
                onPressed: () {
                  for (var video in multiVideo.videos) {
                    ref
                        .read(downloadStatusNotifierProvider(video).notifier)
                        .download();
                  }
                },
                icon: const Icon(Icons.download)),
            IconButton(
                onPressed: () {
                  for (var video in multiVideo.videos) {
                    ref
                        .read(downloadStatusNotifierProvider(video).notifier)
                        .cancel();
                  }
                },
                icon: const Icon(Icons.remove)),
          ],
        )
      ],
    );
  }
}
