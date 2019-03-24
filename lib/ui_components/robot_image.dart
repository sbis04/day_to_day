import 'package:flutter/material.dart';

Widget robotImage() {
  return Hero(
      tag: 'robot',
      child: Image(image: AssetImage("assets/robot.gif"), height: 140.0));
}
