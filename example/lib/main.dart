import 'package:flutter/material.dart';
import 'package:flutter_keyboard_action_done/flutter_keyboard_action_done.dart';
import 'package:flutter_keyboard_action_done/keyboard_done.dart';
import 'package:flutter_keyboard_action_done_c/screen1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Screen1(),
    );
  }
}
