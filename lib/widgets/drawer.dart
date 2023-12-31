// ignore_for_file: prefer_const_constructors
//ignore_for_file: prefer_const_literals


import 'package:carbon_footprint/db/db.dart';
import 'package:carbon_footprint/pages/get_started.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:velocity_x/velocity_x.dart';

import '../utils/routes.dart';



class AppDrawer extends StatefulWidget {
  AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {

  final startbox = Hive.box("Start_db");
  StartPointer db = StartPointer();

  String userName = "";
  String userimg = "";
  get catalog => null;
  int count = 0;

  bool testake=false;

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

  _retakeTest(){
    setState(() {
      db.startHome = !db.startHome;
    });   
    Future.delayed(Duration(seconds: 1));
    Navigator.pushNamed(context, Myroutes.getStartedRoute);
    db.updateTheme();
  }




  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: context.canvasColor,
        child: ListView(
          children: [
            SizedBox(height: 20,),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Color.fromARGB(60, 206, 59, 59),
                child: Icon(
                  Icons.person,
                  color: const Color.fromARGB(255, 226, 54, 54),
                  size: 24,
                ),
              ),
            
              title: Text(
                "User",style: 
                TextStyle(color: const Color.fromARGB(255, 226, 54, 54),fontSize: 24),
              ),
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: () {
                _retakeTest();
              },

              child: ListTile(
                
                //5th Title
                leading: Icon(
                  CupertinoIcons.restart,
                  color: context.cardColor,
                  
                ),
                title: Text(
                  "Retake Test",
                  style:
                      TextStyle(color: context.theme.primaryColor, fontSize: 18),
                ),
              ),
            ),
            ListTile(
              onTap: () async {
              },
              //5th Title
              leading: Icon(
                CupertinoIcons.doc,
                color: context.cardColor,
                
              ),
              title: Text(
                "Disclaimer",
                style:
                    TextStyle(color: context.theme.primaryColor, fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
