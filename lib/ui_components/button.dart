import 'package:day_to_day/ui_screens/day_screen.dart';
import 'package:day_to_day/ui_screens/name_screen.dart';
import 'package:flutter/material.dart';

Widget button(BuildContext context, String _text, String routeName, String argument) {
  return Hero(
    tag: 'button',
    child: RaisedButton(
        highlightColor: Colors.deepPurple[900],
        elevation: 12.0,
        child: Text(_text, style: TextStyle(fontSize: 40, color: Colors.white)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Colors.deepPurple[400],
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => routeName == '/day'
                      ? DayScreen(argument)
                      : NameScreen()));
        }),
  );
}

Widget appBar() {
  return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.deepPurple));
}
