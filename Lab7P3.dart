import 'package:flutter/material.dart';

class Lab7P3 extends StatefulWidget {
  @override
  State<Lab7P3> createState() => _Lab7P3State();
}

class _Lab7P3State extends State<Lab7P3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
            color: Colors.blue,
          )),
          Expanded(
              child: Container(
            color: Colors.orange,
          )),
          Expanded(
              child: Container(
            color: Colors.purple,
          )),
        ],
      ),
    );
  }
}
