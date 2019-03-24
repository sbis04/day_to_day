import 'package:day_to_day/ui_components/button.dart';
import 'package:day_to_day/ui_components/robot_image.dart';
import 'package:flutter/material.dart';

class DayScreen extends StatelessWidget {
  final String _name;
  DayScreen(this._name);

  final List day = [
    'SUNDAY',
    'MONDAY',
    'TUESDAY',
    'WEDNESDAY',
    'THURSDAY',
    'FRIDAY',
    'SATURDAY'
  ];
  final List color = [
    Colors.purple,
    Colors.redAccent,
    Colors.redAccent,
    Colors.purple,
    Colors.purple,
    Colors.redAccent,
    Colors.redAccent
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            robotImage(),
            SizedBox(height: 40),
            Text(
              "Hi, $_name !",
              style: TextStyle(fontSize: 30, fontFamily: 'BalooChettan'),
            ),
            Expanded(
              child: GridView.builder(
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: day.length,
                itemBuilder: (BuildContext context, int i) {
                  return cardDay(day[i], color[i]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget cardDay(String day, Color color) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Card(
      child: Center(
          child: Text(
        day,
        style: TextStyle(fontSize: 20, color: Colors.white),
      )),
      elevation: 10,
      color: color,
    ),
  );
}
