import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_screen/controller/service/api_manager.dart';
// changenotifer is a class , 
class LoginProvider extends ChangeNotifier{
 
bool isLoading = false;

login(context, {email, password})async{

  if(email.text.isEmpty)
                      {
                        SnackBar(content: Text("Please! Enter Email address"));
                      }
                      else if(password.text.isEmpty){
                      SnackBar(content: Text("Please! Enter Password "));
                      } else {
                       
                      }
                      
  isLoading= true;
   var res = await ApiManager.login(context, email, password);

  if ( res["data"] != null )
  {
    //ush(Home());
  }
   isLoading= false;
}

}