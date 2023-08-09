import 'package:flutter/material.dart';
import 'package:login_screen/utils/utils.dart';
class VideoPlaylistScreen extends StatelessWidget {
  final List<String> videoTitles = [
    'Video 1',
    'Video 2',
    'Video 3',
    // Add more video titles here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Playlist'),
      ),
      body: VideoList(videoTitles: videoTitles),
    );
  }
}

class VideoList extends StatelessWidget {
  final List<String> videoTitles;

  VideoList({required this.videoTitles});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videoTitles.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.play_arrow),
          title: Text(videoTitles[index]),
          onTap: () {
           push(context,  VideoPlayerScreen(videoTitle: videoTitles[index]));
          },
        );
      },
    );
  }
}

class VideoPlayerScreen extends StatelessWidget {
  final String videoTitle;

  VideoPlayerScreen({required this.videoTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Now playing:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              videoTitle,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            // You can integrate a video player component here
            Icon(Icons.play_circle_filled, size: 100, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
