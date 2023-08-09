import 'package:flutter/material.dart';
import 'package:login_screen/utils/utils.dart';

import 'all_vedio_screen.dart';


class VideoPlaylistApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Image(
          height: 200,
          width: 200,
          image: 
        NetworkImage("https://media.istockphoto.com/id/499580590/photo/guitarist-on-stage-for-background-soft-and-blur-concept.webp?b=1&s=612x612&w=0&k=20&c=TqdWpdEN42Lzz3MHH0z-QfCZzGx2nWrjYP5vjOVjT8Y=", )),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("PlayList"),
            TextButton(onPressed: (){
              push(context, VideoPlaylistScreen());
            }, child: Text("See All"))
          ],),
        )
      ]
      ),
    );
  }
}
