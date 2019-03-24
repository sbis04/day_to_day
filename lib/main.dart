import 'package:day_to_day/ui_screens/day_screen.dart';
import 'package:day_to_day/ui_screens/name_screen.dart';
import 'package:day_to_day/ui_screens/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbar_manager/flutter_statusbar_manager.dart';

void main() async {
  await FlutterStatusbarManager.setHidden(true,
      animation: StatusBarAnimation.SLIDE);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.purple[700],
        hintColor: Colors.purple[300],
        cursorColor: Colors.purple[700],
      ),
      home: StartScreen(),
      routes: <String, WidgetBuilder>{
        '/name': (BuildContext context) => NameScreen(),
        '/day': (BuildContext context) => DayScreen(''),
      },
    );
  }
}
