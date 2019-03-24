import 'package:day_to_day/ui_components/button.dart';
import 'package:day_to_day/ui_components/robot_image.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Flex(
        direction: Axis.horizontal,
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  robotImage(),
                  SizedBox(height: 50),
                  textMaker('DAY\n To\nDAY', 50, FontWeight.bold,
                      Colors.deepPurple[400], null),
                  SizedBox(height: 100),
                  button(context, 'CREATE', '/name'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
