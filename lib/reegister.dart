import 'package:flutter/material.dart';
import 'package:splashloginregisterui/myLogin.dart';

class mYhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text("Register"),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(fontSize: 50, color: Colors.pink),
                  ),
                ),
                Image.asset(
                  "assets/aabg1.png",
                  width: 150,
                  height: 150,
                ),
                const Padding(
                  padding: EdgeInsets.all(13.0),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.contact_page_rounded),
                        hintText: "DISPLAY NAME",
                        labelText: "DISPLAY NAME",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                    style: TextStyle(fontSize: 20, color: Colors.black54),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(13.0),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.mail),
                        hintText: "EMAIL",
                        labelText: "EMAIL",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(13.0),
                  child: TextField(
                    obscuringCharacter: "*",
                    obscureText: true,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        hintText: "PASSWORD",
                        labelText: "PASSWORD",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  minWidth: 380,
                  height: 60,
                  onPressed: () {},
                  child: const Text(
                    "CREATE ACCOUNT",
                    style: TextStyle(fontSize: 20),
                  ),
                  textColor: Colors.white,
                  color: Colors.pink,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => mylogin()));
                  },
                  child: const Text(
                    "Already have an account? Login",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
