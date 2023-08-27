import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class customTextFieldClass extends StatelessWidget {
  var ch, hint , con;
  customTextFieldClass({this.ch, this.hint , this.con});
  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 50),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 8.0),
          child: Text(
            ch,
            style: TextStyle(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 8.0,
          ),
          child: TextField(
            controller: con,
            decoration: InputDecoration(
              hintText: hint,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
          ),
        ),
      ]),
    ),
  );
  }
}
