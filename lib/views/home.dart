import 'package:background_download_demo/models/video_model.dart';
import 'package:background_download_demo/notifier/download_provider.dart';
import 'package:background_download_demo/views/multiple_video_entry.dart';
import 'package:background_download_demo/views/video_entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';

class Home extends ConsumerWidget {
  const Home({Key? key}) : super(key: key);

  final String id = 'video_id_1';
  final String url =
      'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('background_downloader demo'),
        backgroundColor: Theme.of(context).primaryColorLight,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  ...videoList.map((e) => VideoEntry(video: e)).toList(),
                  const MultipleVideoEntry(multiVideo: multipleVideo),
                ],
              ),
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () async {
                    print(await getApplicationDocumentsDirectory());
                  },
                  child: const Text('Print path'),
                ),
                TextButton(
                  onPressed: () async {
                    print('list all task:');
                    final downloader = ref.watch(backgroundDownloadProvider);
                    final allTasks = await downloader.database.allRecords();
                    if (allTasks.isEmpty) {
                      print('db is empty');
                    }
                    for (var task in allTasks) {
                      print(
                          'file ${task.task.filename} ${task.taskId} with status ${task.status.name}');
                    }
                  },
                  child: const Text('Print task in db'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
