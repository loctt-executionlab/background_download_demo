import 'package:background_download_demo/models/video_model.dart';
import 'package:background_download_demo/views/multiple_video_entry.dart';
import 'package:background_download_demo/views/video_entry.dart';
import 'package:background_downloader/background_downloader.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  final String id = 'video_id_1';
  final String url =
      'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4';

  @override
  Widget build(BuildContext context) {
    final FileDownloader downloader = FileDownloader();

    return Scaffold(
      appBar: AppBar(
        title: const Text('background_downloader demo'),
        backgroundColor: Theme.of(context).primaryColorLight,
      ),
      body: ListView(
        children: [
          ...videoList.map((e) => VideoEntry(video: e)).toList(),
          const MultipleVideoEntry(multiVideo: multipleVideo),
          VideoEntry(video: videoList[0]),
          TextButton(
              onPressed: () {
                downloader.enqueue(
                    DownloadTask(url: url, updates: Updates.statusAndProgress));
              },
              child: const Text('download')),
          TextButton(onPressed: () {}, child: const Text('download')),
        ],
      ),
    );
  }
}
