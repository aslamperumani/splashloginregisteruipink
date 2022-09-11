import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splashloginregisterui/myLogin.dart';
import 'package:splashloginregisterui/reegister.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MySplash()));
}

class MySplash extends StatefulWidget {
  @override
  State<MySplash> createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  // @override
  // void initState(){
  //   Timer(Duration(seconds: 5), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MySplash())));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage("assets/aabg.png"))),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "WELCOME",
                style: TextStyle(fontSize: 50, color: Colors.pink),
              ),
              //Image.asset("assets/iconse.png")
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Image(
                  image: NetworkImage(
                      "https://www.aplenzin.com/siteassets/images/icon-254x254-patentico.png"),
                  width: 125,
                  height: 125,
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(top: 150.0, bottom: 10.0, left: 14.0, right: 14.0 ),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  minWidth: 340,
                  height: 80,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => mylogin()));
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(fontSize: 34),
                  ),
                  textColor: Colors.white,
                  color: Colors.pink,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(14.0),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side: BorderSide(color: Colors.white)),
                  minWidth: 340,
                  height: 80,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => mYhome()));
                  },
                  child: const Text(
                    "Register",
                    style: TextStyle(fontSize: 34),
                  ),
                  textColor: Colors.white,
                  color: Colors.transparent,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
