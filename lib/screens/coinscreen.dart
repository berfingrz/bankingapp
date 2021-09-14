import 'package:bankingapp/constants/color.dart';
import 'package:bankingapp/models/coin.dart';
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
      ),
      body: Container(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            Padding(
              padding:
                  EdgeInsets.only(left: 16, bottom: 13, right: 10, top: 29),
              child: Text(
                'Coin Tracking',
                style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  color: kBlackColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 0),
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "\nTotal Balance:\n",
                    style: GoogleFonts.inter(
                      fontSize: 18,
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
                    text: "3000\n",
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: kBlackColor,
                    )),
              ])),
            ),
            ListView.builder(
                itemCount: coins.length,
                padding: EdgeInsets.only(left: 16, right: 16),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    height: 76,
                    margin: EdgeInsets.only(bottom: 13),
                    padding: EdgeInsets.only(
                        bottom: 12, right: 22, top: 12, left: 24),
                    decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: kTenBlackColor,
                              blurRadius: 10,
                              spreadRadius: 5,
                              offset: Offset(8, 8))
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 57,
                          width: 57,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(coins[index].cryptoIconURL)),
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
                              coins[index].name,
                              style: GoogleFonts.inter(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: kBlackColor),
                            ),
                            Text(
                              coins[index].currency,
                              style: GoogleFonts.inter(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: kGreyColor),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              coins[index].amount,
                              style: GoogleFonts.inter(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: kBlueColor),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
