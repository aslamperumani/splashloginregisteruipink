import 'package:flutter/material.dart';
import 'package:splashloginregisterui/reegister.dart';

void main() {
  runApp(mylogin());
}

class mylogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.pink,
          title: Text("Login"),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
          Padding(
          padding: EdgeInsets.only(top: 40),
          child: Text(
                "LOGIN",
                style: TextStyle(fontSize: 50  , color: Colors.pink),
              ),),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("assets/aabg1.png", width: 150, height: 150,),
                  const Padding(
                    padding: EdgeInsets.all(17.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "username",
                          labelText: "Username",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)))),
                      style: TextStyle(fontSize: 20, color: Colors.black54),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(13.0),
                    child: TextField(
                      obscuringCharacter: "*",
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "password",
                        labelText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
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
                      "LOGIN",
                      style: TextStyle(fontSize: 30),
                    ),
                    textColor: Colors.white,
                    color: Colors.pink,
                  ),
                  TextButton(onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => mYhome()));
                  }, child: const Text(
                    "Don't have an account? SignUp",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
