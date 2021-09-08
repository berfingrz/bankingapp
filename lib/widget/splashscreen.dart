import 'package:bankingapp/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:bankingapp/main.dart';

void main() {
  runApp(MaterialApp(home: MySplash()));
}

class MySplash extends StatefulWidget {
  @override
  _MySplashState createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => MyBottomNavigationBar()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage("assets/images/splash.jpg"))),
      ),
    );
  }
}
