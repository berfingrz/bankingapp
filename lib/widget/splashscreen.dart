import 'package:flutter/material.dart';
import 'package:bankingapp/main.dart';
import 'package:lottie/lottie.dart';

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
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => MyBottomNavigationBar()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Lottie.asset(
      'assets/splash.mp4.lottie.json',
      fit: BoxFit.fill,
    ));
  }
}
