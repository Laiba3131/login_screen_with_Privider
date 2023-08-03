import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login_screen/controller/provider/login_provider.dart';
import 'package:login_screen/utils/preferences.dart';
import 'package:provider/provider.dart';

import '../utils/utils.dart';
import 'home_screen.dart';
import 'signup_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailController= TextEditingController();
   TextEditingController passwordController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Builder(
          builder: ((context) {
            
          var myProvider = context.watch<LoginProvider>();
          return myProvider.isLoading?  Center(child: CircularProgressIndicator.adaptive(),):
          Container(
            child: SingleChildScrollView(
              child: Column(children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.black,
                  child: Center(
                    child: Image(
                      image: NetworkImage(
                          "https://cdn-icons-png.flaticon.com/512/6681/6681204.png"),
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                // Spacer(),
                Container(
                  width: double.infinity,
                  height: 400,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 252, 245, 245),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                      )),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        CustomTextField("Email", " laibaazam.31@gmail.com", emailController),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                color: Colors.white),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 8.0, left: 8.0),
                                    child: Text(
                                      "Password",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: TextField(
                                      controller: passwordController,
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        hintText: "****",
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                          ),
                        ),

                       //CustomTextField("Password", "*****", password),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(primary: Colors.black),
                            onPressed: (() {
                                var provider = context.read<LoginProvider>();
                           provider.login1(context,email1: emailController.text, password1: passwordController.text);
                          // var getInfo= Preference.getToken();
                          //  if(getInfo!= null)
                          //  {
                          //   pushUntil(context, HomeScreen());
                          //  }
                          //  else{
                          //   pushUntil(context, LoginScreen());
                          //  }
                            }),
                            child: Text(
                              "Login",
                              style: TextStyle(color: Colors.white),
                            )),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: <Widget>[
                            const Text("Don't have any account?"),
                            TextButton(
                              child: const Text(
                                'Sign up',
                                style: TextStyle(fontSize: 20, color: Colors.black),
                              ),
                              onPressed: () {
                                push(context, SignUpPage());
                              },
                            )
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                      ]),
                )
              ]),
              ),
          );

          }
          ),
        ),
        
      ),
    );
  }
}



Widget CustomTextField(String ch, String hint , TextEditingController con) {
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