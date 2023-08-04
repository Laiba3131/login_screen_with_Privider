import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login_screen/utils/utils.dart';
import 'package:provider/provider.dart';

import '../controller/provider/signup_provider.dart';
import 'login_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
    TextEditingController condirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                IconButton(onPressed: (){
                  pop(context);
                }, icon:   Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  SizedBox(
                    height: 0,
                    width: 0,
                  )
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 500,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 252, 245, 245),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
              ),
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  MyField("Name", "Enter", nameController),
                  SizedBox(
                    height: 15,
                  ),
                  MyField("Email", " laibaazam.31@gmail.com", emailController),
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
                                      hintText: "* * * *",
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                      ),
                                    ))),
                          ]),
                    ),
                  ),
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
                                "Confirm Password",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: TextField(
                                controller: condirmPasswordController,
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: "* * * *",
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      onPressed: (() {
                         var provider = context.read<SignupProvider>();
                         provider.signup1(context, name1: nameController.text, email1: emailController.text, password1: passwordController.text);
                      }),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.white),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      const Text("Already have any account?"),
                      TextButton(
                        child: const Text(
                          'Login',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        onPressed: () {
                        push(context, LoginScreen());
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
}


Widget MyField(String ch, String hint , TextEditingController con) {
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
