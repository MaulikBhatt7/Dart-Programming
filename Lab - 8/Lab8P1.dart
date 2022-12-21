import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Lab8P1 extends StatefulWidget {
  @override
  State<Lab8P1> createState() => _Lab8P1State();
}


class _Lab8P1State extends State<Lab8P1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "Hello World",
        style: TextStyle(
            fontSize: 50, color: Colors.blue, fontWeight: FontWeight.bold),
      )),

    );
  }
}
