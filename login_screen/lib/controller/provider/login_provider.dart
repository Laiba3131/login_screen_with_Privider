import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_screen/View/home_screen.dart';
import 'package:login_screen/View/login_page.dart';
import 'package:login_screen/controller/service/api_manager.dart';
import 'package:login_screen/model/login_model.dart';
import 'package:login_screen/utils/preferences.dart';
import 'package:login_screen/utils/utils.dart';
// changenotifer is a class , 
class LoginProvider extends ChangeNotifier{
 
bool isLoading = false;

login1(context, {email1, password1})async{

  if(email1.isEmpty)
                      {
                        showSnackBar(context, Text("Please! Enter Email address"));
                      }
                      else if(password1.isEmpty){
                      showSnackBar(context, Text("Please! Enter password"));
                      } else {
                       
                      
  isLoading= true;

  notifyListeners();
  //var res = await ApiManager.login(context, email1, password1);
   LoginModel res = await ApiManager.login(context, email1, password1);
  // if ( res["data"] != null )
  if ( res.data != null )
  {
    await Preference.saveToken(res.data!.accessToken);
   pushUntil(context, HomeScreen());
    isLoading= false;
   notifyListeners();
 
  }
   
} }

}