import 'package:flutter/material.dart';

class Lab8P2 extends StatefulWidget {
  @override
  State<Lab8P2> createState() => _Lab8P2State();
}

class _CustomTextState extends State<CustomText> {
  String str = "";

  _CustomTextState(String str) {
    this.str = str;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        this.str,
        style: TextStyle(fontSize: 50, color: Colors.blue),
      ),
    );
  }
}

class CustomText extends StatefulWidget {
  String str = "";

  CustomText(String str) {
    this.str = str;
  }

  @override
  State<CustomText> createState() => _CustomTextState(this.str);
}

class _Lab8P2State extends State<Lab8P2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomText("Hello World!"),
    );
  }
}
