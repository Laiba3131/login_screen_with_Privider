import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_screen/View/home_screen.dart';
import 'package:login_screen/controller/service/api_manager.dart';
import 'package:login_screen/utils/utils.dart';
// changenotifer is a class , 
class LoginProvider extends ChangeNotifier{
 
bool isLoading = false;

login(context, {email, password})async{

  if(email.isEmpty)
                      {
                        showSnackBar(context, Text("Please! Enter Email address"));
                      }
                      else if(password.isEmpty){
                      showSnackBar(context, Text("Please! Enter password"));
                      } else {
                       
                      
  isLoading= true;

  notifyListeners();
   var res = await ApiManager.login(context, email, password);

  if ( res["data"] != null )
  {
   pushUntil(context, HomeScreen());
  }
   isLoading= false;

   notifyListeners();
}
                   }

}