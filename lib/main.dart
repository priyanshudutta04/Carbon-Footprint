import 'package:carbon_footprint/pages/get_started.dart';
import 'package:carbon_footprint/pages/home.dart';
import 'package:carbon_footprint/utils/routes.dart';

import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  //const MyApp({super.key});

  bool isSwitched;
  MyApp({Key? key, this.isSwitched=false}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      
      theme: ThemeData(primaryColor: Colors.red),
      
      //themeMode: ThemeMode.system,                       // setting the theme

      debugShowCheckedModeBanner: false,              //removes debug banner

      initialRoute: "/",                              //this route will open first
      
      routes: {                                       //creating routes for different pages in app
        "/": (context) => GetStarted(),                //main root 
        Myroutes.homeRoute: (context) => HomePage(),      
      },
    );   
  }
}

