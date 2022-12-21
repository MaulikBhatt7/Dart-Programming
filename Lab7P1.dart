import 'package:flutter/material.dart';

class Lab7P1 extends StatefulWidget{
  @override
  State<Lab7P1> createState() => _Lab7P1State();
}

class _Lab7P1State extends State<Lab7P1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(child: Container(color: Colors.blue,)),
          Expanded(child: Container(color: Colors.orange,)),
          Expanded(child: Container(color: Colors.purple,)),

        ],
      )
      ,
    );
  }
}
