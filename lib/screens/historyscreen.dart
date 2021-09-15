import 'package:bankingapp/database/database_helper.dart';
import 'package:bankingapp/models/histories.dart';
import 'package:bankingapp/widget/checkconnection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bankingapp/constants/color.dart';

class HistoryScreen extends StatefulWidget {
  _HistoryScreen createState() => _HistoryScreen();
}

class _HistoryScreen extends State<HistoryScreen> {
  final dbHelper = DbHelper();
  final checkconnection = CheckConnection();

  @override
  void initState() {
    dbHelper.initDb();
    checkconnection.checkConnection();
    super.initState();
  }

  Widget projectWidget() {
    return FutureBuilder<List<Histories>>(
        future: dbHelper.getHistories(),
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data!.length > 0) //
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                Histories histories = snapshot.data![index];
                return Container(
                  height: 76,
                  margin: EdgeInsets.only(bottom: 13),
                  padding:
                      EdgeInsets.only(bottom: 12, right: 22, top: 12, left: 24),
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
                                    image: new AssetImage(
                                        "assets/images/${histories.historiesIcon}"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 13,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                histories.historiesName,
                                style: GoogleFonts.inter(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: kBlackColor),
                              ),
                              Text(
                                histories.historiesDate,
                                style: GoogleFonts.inter(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: kGreyColor),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            histories.historiesPrice,
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
            );
          else
            return Container();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transfer Histories'),
        backgroundColor: Colors.indigo, // status bar color
      ),
      body: projectWidget(),
      /*body: Container(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            Padding(
              padding:
                  EdgeInsets.only(left: 16, right: 10, bottom: 13, top: 29),
              child: Text(
                'Transaction Histories',
                style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: kBlackColor),
              ),
            ),
            ListView.builder(
              itemCount: histories.length,
              padding: EdgeInsets.only(left: 16, right: 16),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  height: 76,
                  margin: EdgeInsets.only(bottom: 13),
                  padding:
                      EdgeInsets.only(bottom: 12, right: 22, top: 12, left: 24),
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
                                  image: AssetImage(histories[index].photo),
                                )),
                          ),
                          SizedBox(
                            width: 13,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                histories[index].name,
                                style: GoogleFonts.inter(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: kBlackColor),
                              ),
                              Text(
                                histories[index].date,
                                style: GoogleFonts.inter(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: kGreyColor),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            histories[index].amount,
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
        ),
      ),*/
    );
  }
}
/*
class HistoriesModel {
  String name;
  String photo;
  String date;
  String amount;

  HistoriesModel(this.name, this.photo, this.date, this.amount);
}

List<HistoriesModel> histories = historiesData
    .map((item) => HistoriesModel(
        item['name'], item['photo'], item['date'], item['amount']))
    .toList();

List<Map<String, dynamic>> historiesData = [
  {
    "name": "School Fee",
    "photo": "assets/images/university.png",
    "date": "12st Sep 2021",
    "amount": "-\€127"
  },
  {
    "name": "Flying Ticket",
    "photo": "assets/images/airplane-flying.png",
    "date": "1st Oct 2021",
    "amount": "-\$100.00"
  },
  {
    "name": "Starbucks",
    "photo": "assets/images/big-cup-of-coffee.png",
    "date": "15th Mar 2022",
    "amount": "-\$5.00"
  },
  {
    "name": "Getir",
    "photo": "assets/images/cargo-truck.png",
    "date": "17th June 2022",
    "amount": "-\$13.40"
  },
  {
    "name": "EFT",
    "photo": "assets/images/pay.png",
    "date": "1st Agu 2022",
    "amount": "+\$30.00"
  },
  {
    "name": "Debt Payment",
    "photo": "assets/images/debt.png",
    "date": "23th Agu 2022",
    "amount": "-\$120.00"
  },
  {
    "name": "Shopping",
    "photo": "assets/images/shopping-cart.png",
    "date": "30th Agu 2022",
    "amount": "+\$30.00"
  },
];
*/