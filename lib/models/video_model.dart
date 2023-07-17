class Video {
  final String id;
  final String name;
  final String url;

  const Video({required this.id, required this.name, required this.url});
}

class MultipleVideo {
  final String id;
  final String name;
  final List<Video> videos;

  const MultipleVideo(
      {required this.id, required this.name, required this.videos});
}

const videoList = [
  Video(
      id: 'vid1',
      name: 'Big Buck bunny',
      url:
          'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4'),
  Video(
      id: 'vid2',
      name: 'The first Blender Open Movie from 2006',
      url:
          'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4'),
  Video(
      id: 'vid3',
      name: 'Sintel - an independently produced short film',
      url:
          'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4'),
];

const multipleVideo = MultipleVideo(
  id: 'multivideo1',
  name: 'Multivideo',
  videos: videoList,
);
