import 'package:bankingapp/constants/color.dart';
import 'package:bankingapp/constants/themeStyles.dart';
import 'package:bankingapp/widget/addNote.dart';
import 'package:bankingapp/widget/cardInPage.dart';
import 'package:bankingapp/widget/otherDetailsDivider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/// This is the stateful widget that the main application instantiates.
class PaymentScreen extends StatefulWidget {
  final String title;
  final String subTitle;
  final String price;
  final String letter;
  final String color;

  PaymentScreen({
    required this.color,
    required this.letter,
    required this.price,
    required this.subTitle,
    required this.title,
  });

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
                            style: ThemeStyles.primaryTitle),
                      ],
                    ),
                  ),
                  CardInPage(
                    color: widget.color,
                    title: widget.title,
                    subTitle: widget.subTitle,
                    price: widget.price,
                    letter: widget.letter,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, top: 32, bottom: 8),
                    child: Row(
                      children: [
                        Text('Details', style: ThemeStyles.primaryTitle),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 5),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: SvgPicture.asset('assets/transfer.svg'),
                        ),
                        Text('Bank Transfer',
                            style: ThemeStyles.otherDetailsPrimary),
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
                          SvgPicture.asset('assets/edit.svg'),
                        ],
                      )),
                  OtherDetailsDivider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('IBAN', style: ThemeStyles.otherDetailsSecondary),
                        SizedBox(height: 5),
                        Text('TR41 2344 6949 3422 7050 21',
                            style: ThemeStyles.otherDetailsPrimary),
                      ],
                    ),
                  ),
                  OtherDetailsDivider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('BIC', style: ThemeStyles.otherDetailsSecondary),
                        SizedBox(height: 5),
                        Text('TRTIBA32XX',
                            style: ThemeStyles.otherDetailsPrimary),
                      ],
                    ),
                  ),
                  OtherDetailsDivider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Posting Key',
                            style: ThemeStyles.otherDetailsSecondary),
                        SizedBox(height: 5),
                        Text('143', style: ThemeStyles.otherDetailsPrimary),
                      ],
                    ),
                  ),
                  OtherDetailsDivider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Posting Text',
                            style: ThemeStyles.otherDetailsSecondary),
                        SizedBox(height: 5),
                        Text('Landing Page',
                            style: ThemeStyles.otherDetailsPrimary),
                      ],
                    ),
                  ),
                  OtherDetailsDivider(),
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
                  ),
                  OtherDetailsDivider(),
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
                  ),
                  OtherDetailsDivider(),
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
                  ),
                  OtherDetailsDivider(),
                ],
              ),
              AddNote(),
            ],
          ),
        ));
  }
}
