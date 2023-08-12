import 'package:flutter/material.dart';
import 'package:login_screen/controller/provider/get_playlist_provider.dart';
import 'package:provider/provider.dart';

class CreatePlayListScreen extends StatefulWidget {
  const CreatePlayListScreen({super.key});

  @override
  State<CreatePlayListScreen> createState() => _CreatePlayListScreenState();
}

class _CreatePlayListScreenState extends State<CreatePlayListScreen> {
  TextEditingController createPlayListController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
    decoration: BoxDecoration(
      border: Border.all(color: Colors.blue),
    ),
    child: Column(children: [
      Text("Enter playList Name:"),
      TextField(
        controller: createPlayListController,
       decoration: InputDecoration(
        hintText: "PlayList Name",
       ),
      ),
      ElevatedButton(onPressed: (){
         var pro= context.read<GetPlayListProvider>();
         pro.addPlaylist(context, createPlayListController.text);
      }, child: Text("Create")),
    ]),
  ),
    );
  }
}