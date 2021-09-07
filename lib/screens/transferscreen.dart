import 'package:bankingapp/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// This is the stateful widget that the main application instantiates.
class TransferScreen extends StatefulWidget {
  const TransferScreen({Key? key}) : super(key: key);

  @override
  State<TransferScreen> createState() => _TransferScreen();
}

/// This is the private State class that goes with MyStatefulWidget.
class _TransferScreen extends State<TransferScreen> {
  String dropdownValue = "Account 1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Transfer Screen'),
          backgroundColor: Colors.indigo, // status bar color
          brightness: Brightness.dark,
        ),
        body: new Container(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: new Column(children: <Widget>[
            Container(
              child: Text(
                "Choose Your Account: ",
                style: TextStyle(
                    fontFamily: 'Aleo',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: kBlackColor),
              ),
            ),
            DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>['Account 1', 'Account 2']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ]),
        ));
  }
}
