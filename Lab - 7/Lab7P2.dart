import 'package:flutter/material.dart';

class LabP2 extends StatefulWidget{
  @override
  State<LabP2> createState() => _LabP2State();
}

class _LabP2State extends State<LabP2> {
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