import 'package:bankingapp/database/database_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bankingapp/constants/color.dart';
import 'package:bankingapp/models/card.dart';
//import 'package:bankingapp/models/operation.dart';
import 'package:bankingapp/models/transaction.dart';
import 'package:bankingapp/widget/checkconnection.dart';

class HomeScreen extends StatefulWidget {
  final transactionid;
  final transactionname;
  final transactiondate;
  final transactionprice;
  const HomeScreen(
      {Key? key,
      this.transactionid,
      this.transactionname,
      this.transactiondate,
      this.transactionprice})
      : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState(
      transactionid: this.transactionid,
      transactionname: this.transactionname,
      transactiondate: this.transactiondate,
      transactionprice: this.transactionprice);
}

class _HomeScreenState extends State<HomeScreen> {
  var transactionid;
  var transactionname;
  var transactiondate;
  var transactionprice;
  _HomeScreenState(
      {this.transactionid,
      this.transactionname,
      this.transactiondate,
      this.transactionprice});
  int current = 0;
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  final dbHelper = DbHelper();
  @override
  Widget build(BuildContext context) {
    // First Week
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.indigo, // status bar color
        brightness: Brightness.dark,
      ),
      body: SafeArea(
          child: Container(
              margin: EdgeInsets.only(top: 8),
              child: ListView(
                physics: ClampingScrollPhysics(),
                children: <Widget>[
                  // Section 1: App Bar
                  /*Container(
                      margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureDetector(
                              onTap: () {
                                print('Drawer Tapped!');
                              },
                              child:
                                  SvgPicture.asset('assets/svg/hamburger.svg')),
                          Container(
                            height: 59,
                            width: 59,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/user.png',
                                ),
                              ),
                            ),
                          )
                        ],
                      )),*/

                  // Section 2: Text Widget
                  SizedBox(
                    height: 25,
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          greetingMessage(),
                          style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              color: kBlackColor),
                        ),
                        Text(
                          'Berfin Gürz',
                          style: GoogleFonts.inter(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: kBlackColor),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16, top: 0),
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "\nTotal Balance:\n",
                            style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              color: kBlackColor,
                            )),
                        TextSpan(
                            text: "\$",
                            style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: kBlackColor,
                            )),
                        TextSpan(
                            text: "1,742.00 \n",
                            style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: kBlackColor,
                            )),
                        TextSpan(
                            text: "\nYour Cards\n",
                            style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              color: kBlackColor,
                            )),
                      ]),
                    ),
                  ),
                  Container(
                    height: 199,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(left: 16, right: 6),
                      itemCount: cards.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 10),
                          height: 199,
                          width: 344,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(28),
                            color: Color(cards[index].cardBackground),
                          ),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                  child: SvgPicture.asset(
                                      cards[index].cardElementTop)),
                              /* Positioned(
                                  left: 5,
                                  child: Image.asset(cards[index].cardLogoLeft,
                                      height: 90, width: 90)), */
                              Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: SvgPicture.asset(
                                      cards[index].cardElementBottom)),
                              Positioned(
                                  right: 10,
                                  top: 0,
                                  child: Image.asset(
                                    cards[index].cardLogoRight,
                                    height: 80,
                                    width: 80,
                                  )),
                              Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: SvgPicture.asset(
                                      cards[index].cardElementBottom)),
                              Positioned(
                                left: 29,
                                top: 75,
                                child: Text(
                                  cards[index].cardNumber,
                                  style: GoogleFonts.inter(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: kWhiteColor),
                                ),
                              ),
                              Positioned(
                                  left: 135,
                                  top: 120,
                                  child: Text(
                                    cards[index].cardExpired,
                                    style: GoogleFonts.inter(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: kWhiteColor),
                                  )),
                              Positioned(
                                  left: 29,
                                  top: 155,
                                  child: Text(
                                    cards[index].user,
                                    style: GoogleFonts.inter(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300,
                                        color: kWhiteColor),
                                  )),
                              Positioned(
                                  right: 10,
                                  top: 150,
                                  child: Image.asset(
                                    cards[index].cardType,
                                    width: 35,
                                    height: 35,
                                  ))
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  // Second Week
                  // Operation
/*
                  Padding(
                    padding: EdgeInsets.only(
                        left: 16, bottom: 13, top: 29, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Operation",
                          style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                              color: kBlackColor),
                        ),
                        Row(
                          children: map<Widget>(operation, (index, selected) {
                            return Container(
                              alignment: Alignment.centerLeft,
                              height: 9,
                              width: 9,
                              margin: EdgeInsets.only(right: 6),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: current == index
                                      ? kBlueColor
                                      : kTwentyBlueColor),
                            );
                          }),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 123,
                    child: ListView.builder(
                        itemCount: operation.length,
                        padding: EdgeInsets.only(left: 16),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                current = index;
                              });
                            },
                            child: OperationCard(
                                operation: operation[index].name,
                                selectedItem: operation[index].selectedItem,
                                unselectedItem: operation[index].unselectedItem,
                                isSelected: current == index,
                                context: this),
                          );
                        }),
                  ),
*/
                  // Transaction
                  Padding(
                    padding: EdgeInsets.only(
                        left: 16, bottom: 13, top: 29, right: 10),
                    child: Text(
                      "Transaction Histories",
                      style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: kBlackColor),
                    ),
                  ),
                  ListView.builder(
                    itemCount: TransactionsTb.length,
                    padding: EdgeInsets.only(left: 16, right: 16),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 76,
                        margin: EdgeInsets.only(bottom: 13),
                        padding: EdgeInsets.only(
                            left: 24, top: 12, bottom: 12, right: 22),
                        decoration: BoxDecoration(
                            color: kWhiteColor,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: kTenBlackColor,
                                  blurRadius: 10,
                                  spreadRadius: 5,
                                  offset: Offset(8.0, 8.0))
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 57,
                                  width: 57,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image:
                                          AssetImage(transactions[index].photo),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 13,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      transactions[index].name,
                                      style: GoogleFonts.inter(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: kBlackColor),
                                    ),
                                    Text(
                                      transactions[index].date,
                                      style: GoogleFonts.inter(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          color: kGreyColor),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  transactions[index].amount,
                                  style: GoogleFonts.inter(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: kBlueColor),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  )
                ],
              ))),
    );
  }
}

/*
class OperationCard extends StatefulWidget {
  final String operation;
  final String selectedItem;
  final String unselectedItem;
  final bool isSelected;
  _HomeScreenState context;

  OperationCard(
      {required this.operation,
      required this.selectedItem,
      required this.unselectedItem,
      required this.isSelected,
      required this.context});
  @override
  _OperationCardState createState() => _OperationCardState();
}

class _OperationCardState extends State<OperationCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      width: 123,
      height: 123,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: kTenBlackColor,
                blurRadius: 10,
                spreadRadius: 5,
                offset: Offset(8.0, 8.0))
          ],
          borderRadius: BorderRadius.circular(15),
          color: widget.isSelected ? kBlueColor : kWhiteColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
              widget.isSelected ? widget.selectedItem : widget.unselectedItem),
          SizedBox(
            height: 9,
          ),
          Text(
            widget.operation,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: widget.isSelected ? kBlueColor : kWhiteColor),
          )
        ],
      ),
    );
  }
}
*/
String greetingMessage() {
  var timeNow = DateTime.now().hour;
  if (timeNow <= 12) {
    return 'Good Morning,';
  } else if ((timeNow > 12) && (timeNow <= 16)) {
    return 'Good Afternoon,';
  } else if ((timeNow > 16) && (timeNow < 20)) {
    return 'Good Evening,';
  } else {
    return 'Good Night,';
  }
}
