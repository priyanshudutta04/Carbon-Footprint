import 'package:carbon_footprint/pages/air_travel.dart';
import 'package:carbon_footprint/pages/food_carbon.dart';
import 'package:carbon_footprint/pages/get_started.dart';
import 'package:carbon_footprint/pages/home.dart';
import 'package:carbon_footprint/pages/transport.dart';
import 'package:carbon_footprint/utils/routes.dart';
import 'package:carbon_footprint/utils/themes.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  //const MyApp({super.key});

  bool isSwitched;
  MyApp({Key? key, this.isSwitched=false}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      
      themeMode: themeProvider.themeMode,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      
      //themeMode: ThemeMode.system,                       // setting the theme

      debugShowCheckedModeBanner: false,              //removes debug banner

      initialRoute: "/",                              //this route will open first
      
      routes: {                                       //creating routes for different pages in app
        "/": (context) => GetStarted(),                //main root 
        Myroutes.homeRoute: (context) => HomePage(),
        Myroutes.foodCarbonRoute: (context) => FoodCarbon(),
        Myroutes.transportCarbonRoute: (context) => TransportCarbon(),  
        Myroutes.airCarbonRoute: (context) => AirTravel(),  
      },
    );   
  }
  );
}

