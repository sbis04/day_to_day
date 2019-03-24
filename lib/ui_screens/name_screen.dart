import 'package:day_to_day/ui_components/button.dart';
import 'package:day_to_day/ui_components/robot_image.dart';
import 'package:flutter/material.dart';

class NameScreen extends StatefulWidget {
  @override
  _NameScreenState createState() => _NameScreenState();
}

class _NameScreenState extends State<NameScreen> {
  final TextEditingController _nameController = TextEditingController();
  FocusNode _focusNode = new FocusNode();
  String _name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            SizedBox(height: 50),
            robotImage(),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextFormField(
                focusNode: _focusNode,
                textCapitalization: TextCapitalization.words,
                maxLength: 15,
                controller: _nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Your First Name',
                  labelText: 'Enter Your Name',
                ),
                onEditingComplete: () {
                  setState(() {
                    _focusNode.unfocus();
                    _name = _nameController.text;
                  });
                },
              ),
            ),
            SizedBox(height: 20),
            button(context, 'NEXT', '/day', _name),
          ],
        ),
      ),
    );
  }
}
