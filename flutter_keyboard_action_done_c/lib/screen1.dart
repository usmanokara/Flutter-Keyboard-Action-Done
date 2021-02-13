import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_action_done/flutter_keyboard_action_done.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  void initState() {
    super.initState();
    KeyBoardDoneController.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 50),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(hintText: "email"),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "number"),
            ),
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(hintText: "phone"),
            ),
          ],
        ),
      ),
    );
  }
}
