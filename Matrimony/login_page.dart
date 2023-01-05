import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  bool isRememberMe = true;
  bool isHover=false;
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);

  }
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Row(
        children: [
          Expanded(child: Column()),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              child: Card(
                elevation: 25,
                margin: EdgeInsets.only(top: 50),
                child: Form(
                  key: formkey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 25),
                        padding: EdgeInsets.all(5),
                        child: Text(
                          "Username",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: TextFormField(
                          controller: usernameController,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                          validator: (value) {
                            if(value!=null && value.isEmpty){
                              return "Enter Username";
                            }
                          },
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          "Password ",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: TextFormField(
                          controller: passwordController,
                          obscureText: true,
                          obscuringCharacter: '*',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          validator: (value) {
                            if(value!=null && value.isEmpty){
                              return "Enter Password";
                            }
                          },
                        ),
                        
                      ),
                      InkWell(
                        onHover: (value) {
                          setState(() {
                            isHover=value;
                          });
                        },
                        onTap: () {
                          setState(() {
                            isRememberMe=!isRememberMe;
                          });
                        },
                        child: Container(
                          color: isHover ? Colors.blue : Colors.white,
                          child: Row(
                            children: [
                              Checkbox(value: isRememberMe, onChanged: (value) {

                              }),
                              Container(
                                child: Text("Remember Me"),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: ElevatedButton(

                          onPressed: () {
                            if(formkey.currentState!.validate()){

                            }
                            // if(usernameController=="")
                          },
                          child: Text("Login"),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            flex: 6,
          ),
          Expanded(child: Column()),
        ],
      ),
    );
  }
}
