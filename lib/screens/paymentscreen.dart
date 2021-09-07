import 'package:bankingapp/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// This is the stateful widget that the main application instantiates.
class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreen();
}

/// This is the private State class that goes with MyStatefulWidget.
class _PaymentScreen extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Payment Screen'),
          backgroundColor: Colors.indigo, // status bar color
          brightness: Brightness.dark,
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'This is the Payment Screen',
                style: GoogleFonts.inter(
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                    color: kBlackColor),
              )
            ],
          ),
        ));
  }
}
