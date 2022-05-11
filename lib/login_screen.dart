// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, duplicate_ignore

// ignore: prefer_const_constructors
import 'package:admin/constants.dart';
import 'package:admin/screens/main/main_screen.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../controllers/MenuController.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            // ignore: prefer_const_constructors
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                // ignore: prefer_const_literals_to_create_immutables
                colors: [
                  Color.fromARGB(255, 64, 18, 107),
                  Color.fromARGB(255, 38, 12, 133),
                  Color.fromARGB(255, 17, 92, 177),
                ]),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 80),
              Image.asset("assets/images/security-gate.png"),
              SizedBox(
                height: 10,
              ),
              Text(
                "Dropbox Iot",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 400,
                width: 325,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 75, 179, 211),
                  borderRadius: BorderRadius.circular(defaultPadding),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "Hello",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Please Login to your Account",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 53, 43, 43),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Email Address",
                          suffixIcon: Icon(
                            Icons.email_outlined,
                            size: 17,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 250,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          suffixIcon: Icon(
                            Icons.remove_red_eye_outlined,
                            size: 17,
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Builder(builder: (context) {
                      return Container(
                        width: 180,
                        child: Builder(builder: (context) {
                          return RawMaterialButton(
                            key: context.read<MenuController>().scaffoldKey,
                            fillColor: Color.fromARGB(255, 141, 219, 230),
                            elevation: 0.0,
                            padding:
                                EdgeInsets.symmetric(vertical: defaultPadding),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainScreen()),
                              );
                            },
                            //BuilderMultiproviper()
                          );
                        }),
                      );
                    })
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

/*
Padding(
                      padding: EdgeInsets.fromLTRB(20, 15, 40, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Forget Password",
                            style:
                                TextStyle(color: Colors.deepOrangeAccent[700]),
                          ),
                        ],
                      ),
                    ),
                    */


