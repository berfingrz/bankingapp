import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  _HistoryScreen createState() => _HistoryScreen();
}

class _HistoryScreen extends State<HistoryScreen> {
  /*
  List<HistoryModel> histories = [
    HistoryModel(
        'Paid to', 'Alex', 100.0, '13 May 2022', 'images/ico_logo_red.png'),
    HistoryModel('Electricity\nbill paid', 'Fantasy lights', 330.0,
        '13 May 2022', 'images/ico_logo_red.png'),
    HistoryModel('Mobile\nrecharged', 'Fantasy mobile', 750.0, '21 Oct 2022',
        'images/ico_logo_red.png'),
    HistoryModel('Received from', 'Annalena', 30.0, '01 Dec 2022',
        'images/ico_logo_blue.png'),
  ];*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text('Transfer Histories'),
      backgroundColor: Colors.indigo, // status bar color
      brightness: Brightness.dark,
    ) /*
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 0),
              child: Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: histories.length,
                          itemBuilder: (BuildContext context, int index) {
                            return _historyWidget(histories[index]);
                          }),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),*/
        );
  }
  /*
  Widget _historyWidget(HistoryModel history) {
    return Container(
//      height: 100.0,
      margin: EdgeInsets.only(top: 0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(top: 0.0),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 0.0),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        history.historyType,
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      Text(history.receiverName)
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '\$${history.amount}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'Debit from \non ${history.date}',
                              textAlign: TextAlign.right,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 4.0),
                            child: Image.asset(
                              history.cardLogoPath,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  } */
}
/*
class HistoryModel {
  final String historyType;
  final String receiverName;
  final double amount;
  final String date;
  final String cardLogoPath;

  HistoryModel(this.historyType, this.receiverName, this.amount, this.date,
      this.cardLogoPath);
}*/
