import 'package:bankingapp/constants/color.dart';
import 'package:bankingapp/constants/themeStyles.dart';
import 'package:bankingapp/widget/otherDetailsDivider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

/// This is the stateful widget that the main application instantiates.
class PaymentScreen extends StatefulWidget {
  @override
  State<PaymentScreen> createState() => _PaymentScreen();
}

/// This is the private State class that goes with MyStatefulWidget.
class _PaymentScreen extends State<PaymentScreen> {
  TextEditingController myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Payment Screen'),
          backgroundColor: Colors.indigo, // status bar color
          centerTitle: true,
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Container(
          child: Stack(
            children: [
              ListView(
                shrinkWrap: true,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, top: 32, bottom: 8),
                    child: Row(
                      children: [
                        Text('Outgoing Payment',
                            style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              color: kBlackColor,
                            )),
                      ],
                    ),
                  ),
                  /* Padding(
                    padding:
                        const EdgeInsets.only(left: 16, top: 32, bottom: 8),
                    child: Row(
                      children: [
                        Text('Details', style: ThemeStyles.primaryTitle),
                      ],
                    ),
                  ), */
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 5),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: SvgPicture.asset('assets/svg/transfer.svg'),
                        ),
                        Text('Account to Withdraw Money',
                            style: ThemeStyles.otherDetailsPrimary),
                        /* Text(
                          '\n\nBatı Atasehir',
                          textAlign: TextAlign.left,
                        ), */
                        //Text('TR41 0006 4000 0011 2370 2143 32'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 35, right: 12),
                        ),
                        Text(
                          'Batı Atasehir/Istanbul',
                          style: ThemeStyles.otherDetailsPrimary,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 35, right: 12),
                        ),
                        Text(
                          'TR41 0006 4000 2312 1134 4222 12',
                          style: ThemeStyles.otherDetailsPrimary,
                        ),
                      ],
                    ),
                  ),
                  OtherDetailsDivider(),
                  Padding(
                      padding: const EdgeInsets.only(left: 16, top: 5),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 4, right: 4),
                            child: Container(
                              height: 32,
                              width: 74,
                              decoration: BoxDecoration(
                                color: lightGrey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                  child: Text('#finance',
                                      style: ThemeStyles.tagText)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4, right: 4),
                            child: Container(
                              height: 32,
                              width: 74,
                              decoration: BoxDecoration(
                                color: lightGrey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                  child: Text('#fintory',
                                      style: ThemeStyles.tagText)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4, right: 4),
                            child: Container(
                              height: 32,
                              width: 74,
                              decoration: BoxDecoration(
                                color: lightGrey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                  child: Text('#design',
                                      style: ThemeStyles.tagText)),
                            ),
                          ),
                          InkWell(
                            onTap: () => print("tapped"),
                            child: SvgPicture.asset('assets/svg/edit.svg'),
                          )
                        ],
                      )),
                  OtherDetailsDivider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('IBAN', style: ThemeStyles.otherDetailsPrimary),
                        SizedBox(height: 5),
                        Text('TR', style: ThemeStyles.otherDetailsSecondary),
                        TextFormField(
                          onTap: () {
                            FocusScopeNode currentFocus =
                                FocusScope.of(context);
                            if (!currentFocus.hasPrimaryFocus) {
                              currentFocus.unfocus();
                            }
                          },
                          controller: myController,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.continueAction,
                        )
                      ],
                    ),
                  ),
                  OtherDetailsDivider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Amount', style: ThemeStyles.otherDetailsPrimary),
                        TextFormField(
                          onTap: () {
                            FocusScopeNode currentFocus =
                                FocusScope.of(context);
                            if (!currentFocus.hasPrimaryFocus) {
                              currentFocus.unfocus();
                            }
                          },
                          controller: myController,
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.continueAction,
                        )
                      ],
                    ),
                  ),
                  /* 
                  OtherDetailsDivider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Posting Key',
                            style: ThemeStyles.otherDetailsSecondary),
                        SizedBox(height: 5),
                        TextField()
                        //Text('143', style: ThemeStyles.otherDetailsPrimary),
                      ],
                    ),
                  ), */
                  OtherDetailsDivider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Posting Text',
                            style: ThemeStyles.otherDetailsPrimary),
                        SizedBox(height: 5),
                        TextFormField(
                          onTap: () {
                            FocusScopeNode currentFocus =
                                FocusScope.of(context);
                            if (!currentFocus.hasPrimaryFocus) {
                              currentFocus.unfocus();
                            }
                          },
                          controller: myController,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.send,
                        )
                        /* Text('Landing Page',
                            style: ThemeStyles.otherDetailsPrimary), */
                      ],
                    ),
                  ),
                  /*OtherDetailsDivider(),
                   Padding(
                    padding: const EdgeInsets.only(left: 16, top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Purpose Code',
                            style: ThemeStyles.otherDetailsSecondary),
                        SizedBox(height: 5),
                        Text('ERGS', style: ThemeStyles.otherDetailsPrimary),
                      ],
                    ),
                  ), */
                  /*OtherDetailsDivider(),
                   Padding(
                    padding: const EdgeInsets.only(left: 16, top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('SEPA Reference',
                            style: ThemeStyles.otherDetailsSecondary),
                        SizedBox(height: 5),
                        Text('TR41 2344 6949 3422 7050 21',
                            style: ThemeStyles.otherDetailsPrimary),
                      ],
                    ),
                  ), */
                  /* OtherDetailsDivider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('SEPA Reference',
                            style: ThemeStyles.otherDetailsSecondary),
                        SizedBox(height: 5),
                        TextFormField(
                          controller: myController,
                          keyboardType: TextInputType.text,
                        )
                        /* Text('TR41 2344 6949 3422 7050 21',
                            style: ThemeStyles.otherDetailsPrimary), */
                      ],
                    ),
                  ), */
                  OtherDetailsDivider(),
                  Container(
                    margin: EdgeInsets.all(16.0),
                    child: GestureDetector(
                      onTapUp: (tapDetail) {
                        Navigator.popUntil(context, ModalRoute.withName('/'));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 50.0,
                        decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius:
                                BorderRadius.all(Radius.circular(11.0))),
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 12.0),
                        child: Text(
                          'SEND',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
