import 'package:day_to_day/ui_components/button.dart';
import 'package:day_to_day/ui_components/robot_image.dart';
import 'package:flutter/material.dart';

class DayScreen extends StatelessWidget {
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
            textMaker("Hi, there !", 30, null, null, 'BalooChettan'),
            Expanded(
              child: GridView.builder(
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemCount: 31,
                itemBuilder: (BuildContext context, int i) {
                  return cardDay('DAY ${i + 1}',
                      i % 2 == 0 ? Colors.purple : Colors.redAccent);
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
        child: textMaker(day, 20, null, Colors.white, null),
      ),
      elevation: 12,
      color: color,
    ),
  );
}
