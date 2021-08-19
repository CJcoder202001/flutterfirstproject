import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/Routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changestate = false;
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurpleAccent,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 28),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          changestate = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changestate ? 50 : 120,
                        height: 45,
                        alignment: Alignment.center,
                        child: changestate
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "LOGIN",
                                style: TextStyle(
                                  fontSize: changestate ? 10 : 19,
                                  color: Colors.white,
                                ),
                              ),
                        decoration: BoxDecoration(
                            color: Colors.deepPurpleAccent,
                            borderRadius:
                                BorderRadius.circular(changestate ? 50 : 6)),
                      ),
                    )
                    // ElevatedButton(
                    //   child: Text("LOGIN"),
                    //   style: TextButton.styleFrom(minimumSize: Size(100, 40)),
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    // )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
