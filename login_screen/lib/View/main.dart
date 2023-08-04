import 'package:flutter/material.dart';
import 'package:login_screen/View/login_page.dart';
import 'package:login_screen/View/signup_page.dart';
import 'package:provider/provider.dart';

import '../controller/provider/login_provider.dart';
import '../controller/provider/signup_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> LoginProvider()),
        ChangeNotifierProvider(create: (context)=> SignupProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
       
       home: LoginScreen(),
      ),
    );
  }
}


// arham@eygpttv.com