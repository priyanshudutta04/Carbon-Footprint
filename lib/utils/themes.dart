// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}


class MyThemes {
  static final lightTheme = ThemeData(
      primarySwatch:
          Colors.deepPurple, // changes all colours with respect to given colour
      appBarTheme: AppBarTheme(
        color: const Color.fromARGB(255, 205, 78, 228),
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.deepPurple),
      )
    );

  static final darkTheme = ThemeData(
      primarySwatch: Colors.deepOrange,
      
      appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.red)
      )
    );
}