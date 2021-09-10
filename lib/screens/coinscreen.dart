import 'package:bankingapp/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// This is the stateful widget that the main application instantiates.
class CoinScreen extends StatefulWidget {
  const CoinScreen({Key? key}) : super(key: key);

  @override
  State<CoinScreen> createState() => _CoinScreen();
}

/// This is the private State class that goes with MyStatefulWidget.
class _CoinScreen extends State<CoinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coin Screen'),
        backgroundColor: Colors.indigo, // status bar color
        brightness: Brightness.dark,
      ),
      body: SafeArea(
          child: Stack(
        children: <Widget>[
          Positioned(
            child: CoinScreenPage(),
            top: 0,
            right: 0,
            left: 0,
          ),
          Positioned(
            top: 190,
            left: 0,
            bottom: 0,
            right: 0,
            child: ListView(
              children: <Widget>[
                TokenCard(
                  cryptoAmount: "12.482",
                  cryptoCurrency: "ETH",
                  cryptoIconURL:
                      "https://cdn4.iconfinder.com/data/icons/cryptocoins/227/ETH-alt-512.png",
                  name: "Mainnet",
                  token: "Token 1",
                  usdAmount: "51.97",
                ),
                TokenCard(
                  cryptoAmount: "326.12",
                  cryptoCurrency: "BTC",
                  cryptoIconURL:
                      "http://www.pngall.com/wp-content/uploads/1/Bitcoin-Free-PNG-Image.png",
                  name: "Bitcoin",
                  token: "Token 2",
                  usdAmount: "2972887.01",
                ),
                TokenCard(
                  cryptoAmount: "12.482",
                  cryptoCurrency: "LTC",
                  cryptoIconURL:
                      "https://images.cointelegraph.com/images/240_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS9zdG9yYWdlL3VwbG9hZHMvdmlldy9iZjc1NDFlMDlhNDU2YTNmYzYxMTNlYzljN2NkZjQwOC5wbmc=.png",
                  name: "LightCoin",
                  token: "Token 3",
                  usdAmount: "51.97",
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 9, horizontal: 21),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: EdgeInsets.all(21),
                  child: Row(
                    children: <Widget>[
                      Material(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 21,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Add Token",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Bitcoin, CashCoin, Monero...",
                            style: Theme.of(context).textTheme.subtitle1,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}

class CoinScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 21.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Divider(),
          Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Total Balance",
                  style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: kBlackColor)),
              SizedBox(height: 11),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("\$321.12",
                      style: GoogleFonts.inter(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: kBlackColor,
                      )),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Your Tokens",
                      style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: kBlackColor)),
                ],
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

class TokenCard extends StatelessWidget {
  final String token,
      name,
      cryptoAmount,
      cryptoCurrency,
      usdAmount,
      cryptoIconURL;

  TokenCard(
      {Key? key,
      required this.token,
      required this.name,
      required this.cryptoAmount,
      required this.cryptoCurrency,
      required this.usdAmount,
      required this.cryptoIconURL})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 9, horizontal: 21),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.all(21),
      child: Container(
        width: double.infinity,
        child: Row(
          children: <Widget>[
            Flexible(
              child: Image.network(cryptoIconURL),
              flex: 1,
            ),
            SizedBox(
              width: 10,
            ),
            Flexible(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      token,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                    ),
                    Text(
                      name,
                      style: Theme.of(context).textTheme.subtitle1,
                    )
                  ],
                )),
            SizedBox(
              width: 10,
            ),
            Flexible(
                flex: 2,
                child: Column(
                  children: <Widget>[
                    Text(
                      "$cryptoAmount $cryptoCurrency",
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                    ),
                    Text(
                      "\$$usdAmount",
                      style: Theme.of(context).textTheme.subtitle1,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
