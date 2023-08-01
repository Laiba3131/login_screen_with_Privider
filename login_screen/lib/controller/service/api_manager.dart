import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:login_screen/controller/service/endpoints.dart';
import 'package:login_screen/utils/utils.dart';




class ApiManager{
  static login(BuildContext context,String email, String password )
  async {
    try{
       var url= Uri.parse(Base_url+login_endpoint);
     var response= await http.post(url, body: {
    "email":email,
    "password":password
});


var res = jsonDecode(response.body);

showSnackBar(context, res["message"]);
return res;
}catch(e){

  showSnackBar(context, e.toString());
 
}

  }
}