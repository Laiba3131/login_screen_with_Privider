import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

import '../controller/provider/get_playlist_provider.dart';

class UpdatedScreen extends StatefulWidget {
  var data;
  UpdatedScreen(this.data);

  @override
  State<UpdatedScreen> createState() => _UpdatedScreenState();
}

class _UpdatedScreenState extends State<UpdatedScreen> {
  TextEditingController updatePlayListController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updatePlayListController.text = widget.data["name"];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
        ),
        child: Column(children: [
          Text("Enter Updated Name:"),
          TextField(
            controller: updatePlayListController,
            decoration: InputDecoration(
              hintText: "Changed PlayList Name",
            ),
          ),
          ElevatedButton(
              onPressed: () {
                var pro = context.read<GetPlayListProvider>();
                pro.updatePlayList(
                        context, updatePlayListController.text, widget.data!.id);
                    //context, updatePlayListController.text, widget.data["id"]);
              },
              child: Text("Update")),
        ]),
      ),
    );
  }
}
