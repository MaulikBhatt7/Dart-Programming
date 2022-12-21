import 'dart:ui';

import 'package:flutter/material.dart';

class Lab7P4 extends StatefulWidget {
  @override
  State<Lab7P4> createState() => _Lab7P4State();
}

class _Lab7P4State extends State<Lab7P4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(
                      child: Container(
                    color: Colors.red,
                  )),
                  Expanded(
                    child: Container(
                      color: Colors.yellow,
                    ),
                  ),
                  Expanded(
                      child: Container(
                    color: Colors.blue,
                  )),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                      child: Container(
                    color: Colors.black,
                  ),flex: 2,),
                  Expanded(
                      child: Container(
                    color: Colors.green,
                  ),
                  flex: 2,),
                  Expanded(
                      child: Container(
                    color: Colors.amber,
                  )),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                      child: Container(
                    color: Colors.orange,
                  )),
                  Expanded(
                      child: Container(
                    color: Colors.pink,
                  ),flex: 3,),
                  Expanded(
                      child: Container(
                    color: Colors.lightBlueAccent,
                  ),flex: 2,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
