import 'package:flutter/material.dart';

Widget button(BuildContext context, String _text, String routeName) {
  return Hero(
    tag: 'button',
    child: RaisedButton(
        highlightColor: Colors.deepPurple[900],
        elevation: 12.0,
        child: textMaker(_text, 40, null, Colors.white, null),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Colors.deepPurple[400],
        onPressed: () {
          Navigator.of(context).pushNamed(routeName);
        }),
  );
}

Widget appBar() {
  return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.deepPurple));
}

Widget textMaker(
    String text, double size, FontWeight weight, Color color, String family) {
  return Text(
    text,
    style: TextStyle(
        fontSize: size, fontWeight: weight, color: color, fontFamily: family),
  );
}
