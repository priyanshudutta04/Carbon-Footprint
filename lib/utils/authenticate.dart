

import 'package:carbon_footprint/pages/get_started.dart';
import 'package:carbon_footprint/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:carbon_footprint/db/db.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  final startbox = Hive.box("Start_db");
  StartPointer db = StartPointer();

  bool testake=false;
  bool tt=false;

  @override
  void initState() {
    if (startbox.get("START") == null) {
      db.createTheme();
      testake = db.startHome;
    }
    else{
      db.loadTheme();
      testake=db.startHome;
    }
    
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if(testake==true){
      return  HomePage();
    }
    else if(testake==false){
      return  GetStarted();
    }
    return Scaffold();
  }
}