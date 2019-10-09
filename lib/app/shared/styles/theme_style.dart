import 'package:flutter/material.dart';

class AppTheme {
  ThemeData themeData() {
    return ThemeData(
      primaryColor: Colors.green[500],
      accentColor: Colors.blue[500],
      textTheme: _textTheme(),
    );
  }

  TextTheme _textTheme() {
    return TextTheme(
      title: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
    );
  }
}
