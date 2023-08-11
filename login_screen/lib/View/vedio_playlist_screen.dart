import 'dart:js';
import 'package:flutter/material.dart';
import 'package:login_screen/controller/provider/get_playlist_provider.dart';
import 'package:login_screen/utils/utils.dart';
import 'package:provider/provider.dart';
import 'all_vedio_screen.dart';


class VideoPlaylistApp extends StatefulWidget {

  @override
  State<VideoPlaylistApp> createState() => _VideoPlaylistAppState();
}

class _VideoPlaylistAppState extends State<VideoPlaylistApp> {
    TextEditingController playlistName= TextEditingController();
   
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
      floatingActionButton: FloatingActionButton(onPressed: (){
       CustomTextFiled(playlistName);
      }),
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
        ),

        Builder(
          builder: (context) {
           var pro= context.watch<GetPlayListProvider>();
           return pro.loading2? Center(child: CircularProgressIndicator.adaptive(),):
             ListView(
                      children: [
                        for (int i = 0; i < pro.playlist["data"].length; i++)
                          ListTile(
                            leading: Icon(Icons.play_arrow),
                            title: Text(
                              pro.playlist["data"][i]["name"].toString(),
                            ),
                           
                          ),
                      ],
                    );
          }
        ),
      ]
      ),
    );
  }
}


Widget CustomTextFiled(TextEditingController con)
{
  return Container(
    decoration: BoxDecoration(
      border: Border.all(color: Colors.blue),
    ),
    child: Column(children: [
      Text("Enter playList Name:"),
      TextField(
        controller: con,
       decoration: InputDecoration(
        hintText: "PlayList Name",
       ),
      ),
      ElevatedButton(onPressed: (){}, child: Text("Create"))
    ]),
  )
  ;
}