import 'package:day_to_day/ui_components/button.dart';
import 'package:day_to_day/ui_components/robot_image.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Material(
        child: Container(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  robotImage(),
                  SizedBox(height: 50),
                  Text(
                    'DAY\n To\nDAY',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple[400]),
                  ),
                  SizedBox(height: 100),
                  button(context, 'CREATE', '/name', ''),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
