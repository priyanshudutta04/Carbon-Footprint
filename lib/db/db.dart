import 'package:hive/hive.dart';


class StartPointer{

  bool startHome=false;

  final startbox = Hive.box("Start_db");

   //create initial data
  void createTheme() {
    startHome = false;
  }

  //load data from db
  void loadTheme() {
    startHome = startbox.get("START");
  }

  //update data
  void updateTheme() {
    startbox.put("START", startHome);
  }

}

