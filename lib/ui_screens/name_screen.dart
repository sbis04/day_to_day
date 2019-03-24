import 'package:day_to_day/ui_components/button.dart';
import 'package:day_to_day/ui_components/robot_image.dart';
import 'package:flutter/material.dart';

class NameScreen extends StatelessWidget {
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
                  SizedBox(height: 100),
                  robotImage(),
                  SizedBox(height: 20),
                  textMaker("Hi, I'm Robo !", 30, null, null, 'BalooChettan'),
                  SizedBox(height: 40),
                  button(context, 'NEXT', '/day'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
