import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:matrimony/login_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: Text("Home Page")),
        body: Column(
      children: [
        Expanded(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                "assets/images/background.jpg",
                fit: BoxFit.cover,
              ),
              Container(
                color: Color(0x99AAAAAA),
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(
                        "assets/images/bharatmatrimony_logo.png",
                      ),
                      height: 90,
                      width: 180,
                      margin: EdgeInsets.only(top: 60),
                    ),
                    Container(
                      child: Text(
                        "INDIA'S\nMOST TRUSTED\nMATRIMONY BRAND",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                          bottom: BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                      ),
                      padding: EdgeInsets.all(3),
                      child: Text(
                        "BY THE BRAND TRUST REPORT 2014",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      margin: EdgeInsets.only(top: 10),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return LoginPage();
                  }));
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Colors.green,
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(15),
                child: Text.rich(
                  TextSpan(children: [
                    TextSpan(
                      text: "SIGNUP",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    WidgetSpan(
                      child: Icon(
                        Icons.arrow_right_alt_sharp,
                        color: Colors.white,
                        size: 20,
                      ),
                    )
                  ]),
                ),
                color: Colors.black,
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
