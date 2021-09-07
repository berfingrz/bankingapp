import 'package:flutter/material.dart';
import 'package:bankingapp/screens/homescreen.dart';
import 'package:bankingapp/screens/expensesscreen.dart';
import 'package:bankingapp/screens/paymentscreen.dart';
import 'package:bankingapp/screens/transferscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyBottomNavigationBar(),
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    TransferScreen(),
    PaymentScreen(),
    ExpensesScreen(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: Theme(
          data: ThemeData(
              canvasColor: Colors.indigo, brightness: Brightness.light),
          child: BottomNavigationBar(
            onTap: onTappedBar,
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                icon: new Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: new Icon(Icons.money_off), label: 'Transfer'),
              BottomNavigationBarItem(
                icon: new Icon(Icons.payment),
                label: 'Payment',
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.money),
                label: 'Expenses',
              ),
            ],
          ),
        ));
  }
}
