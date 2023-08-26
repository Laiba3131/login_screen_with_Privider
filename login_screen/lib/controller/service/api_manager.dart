import 'dart:convert';
import 'dart:developer';
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:login_screen/controller/service/endpoints.dart';
import 'package:login_screen/model/addplaylist_model.dart';
import 'package:login_screen/model/delPlayList_model.dart';
import 'package:login_screen/model/get_playlist_model.dart';
import 'package:login_screen/model/signup_model.dart';
import 'package:login_screen/utils/utils.dart';

import '../../model/login_model.dart';
import '../../model/updatePlayList_model.dart';

class ApiManager {
  // static function ko direct class name sy call kr sakty hain
  static login(BuildContext context, String email, String password) async {
    try {
      var url = Uri.parse(Base_url + login_endpoint);
      var response =
          await http.post(url, body: {"email": email, "password": password});

      var res = jsonDecode(response.body);
      showSnackBar(context, res["message"]);
     var login_model = LoginModel.fromJson(res); 
     if(login_model!= null)
      return login_model;
    else
    {
      showSnackBar(context, "This variable is null");
    }
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

  static signup(
      BuildContext context, String name, String email, String password) async {
    try {
      var url = Uri.parse(Base_url_signup + signup_endpoint);
      var response = await http.post(url,
          body: {"name": name, "email": email, "password": password});

      var res = jsonDecode(response.body);
      showSnackBar(context, res["message"]);
      var signup_model = SignUpModel.fromJson(res); 
      return signup_model;
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

  static getPlayList(context) async {
    try {
      var Url = Uri.parse(Base_url + getPlaylistEndpoint);
      var response = await http.get(Url);
      var res = jsonDecode(response.body);
      var dat= GetPlaylistModel.fromJson(res);
      return dat;
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

  static addPlayList(context, name) async {
    try {
      var Url = Uri.parse(Base_url + addPlaylistEndpoint);
      var response = await http.post(Url, body: {"name": name});
      var res = jsonDecode(response.body);
      showSnackBar(context, res["message"]);
      var addPlayList= AddPlaylistModel.fromJson(res);
      return addPlayList;
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

  static delPlayList(context, id) async {
    try {
      var Url = Uri.parse(Base_url + delPlayListEndpoint + id);
      var response = await http.delete(Url);
      var res = jsonDecode(response.body);
      showSnackBar(context, res["message"]);
      var delPlayList = DelPlaylistModel.fromJson(res);
      return delPlayList;
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

  static updatePlayList(context, UpdatesName, id) async {
    try {
      var Url = Uri.parse(Base_url + updatePlayListEndpoint + id);
      var response = await http.patch(Url, body: {"name": UpdatesName});
      var res = jsonDecode(response.body);
      showSnackBar(context, res["message"]);
      var updateplaylist= UpdatePlaylistModel.fromJson(res);
      return updateplaylist;
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
