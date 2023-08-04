import 'package:flutter/cupertino.dart';
import 'package:login_screen/View/home_screen.dart';
import 'package:login_screen/controller/service/api_manager.dart';
import 'package:login_screen/utils/utils.dart';

class SignupProvider extends ChangeNotifier{
  bool isLoading = false;

  signup1(context, {name1, email1, password1})
  async {
    if(name1.isEmpty)
    {
      showSnackBar(context, Text("Please! Enter your name"));
    }
    else if(email1.isEmpty)
    {
      showSnackBar(context, Text("Please! Enter your email"));
    }
    else if(password1.isEmpty)
    {
      showSnackBar(context, Text("Please! Enter your password "));
    }
    else{
      isLoading=true;
      ChangeNotifier();
     var res= await ApiManager.signup(context, name1, email1, password1);

     if(res!= null)
     {
     // pushUntil(context, HomeScreen());
      isLoading=false;
      ChangeNotifier();
     }

    }

  }
}