import 'package:flutter/material.dart';
import 'package:login_screen/controller/provider/get_playlist_provider.dart';
import 'package:login_screen/utils/utils.dart';
import 'package:provider/provider.dart';

class VideoPlaylistScreen extends StatefulWidget {
  @override
  State<VideoPlaylistScreen> createState() => _VideoPlaylistScreenState();
}

class _VideoPlaylistScreenState extends State<VideoPlaylistScreen> {
  final List<String> videoTitles = [
    'Video 1',
    'Video 2',
    'Video 3',
    // Add more video titles here
  ];

  void initState() {
    getPlaylist();
    super.initState();
  }

  getPlaylist() {
    var provider = context.read<GetPlayListProvider>();
    provider.getPlaylist(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Playlist'),
      ),
      body: Builder(builder: (context) {
        var pro = context.watch<GetPlayListProvider>();
        return pro.loading
            ? Center(
                child: CircularProgressIndicator.adaptive(),
              )
            : ListView(
                children: [
                  for (int i = 0; i < pro.playlist["data"].length; i++)
                    ListTile(
                      leading: Icon(Icons.play_arrow),
                      title: Text(
                        pro.playlist["data"][i]["name"],
                      ),
                      // onTap: () {
                      //   push(context,
                      //       VideoPlayerScreen(videoTitle: videoTitles[i]));
                      // },
                    ),
                ],
              );
      }),
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
