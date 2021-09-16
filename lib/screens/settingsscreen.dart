import 'package:bankingapp/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.indigo, // status bar color
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            /*Padding(
              padding: const EdgeInsets.only(top: 30, left: 16, right: 16),
              child: Text(
                'Settings',
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700, fontSize: 20),
              ),
            ),*/
            Container(
              child: Expanded(
                  child: ListView.builder(
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return Container(
                            margin:
                                EdgeInsets.only(top: 16, left: 16, right: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 5, right: 16, top: 0),
                                  child: Text('Personal Information',
                                      style: GoogleFonts.inter(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300,
                                        color: kBlackColor,
                                      )),
                                ),
                                Card(
                                  child: Container(
                                    margin: EdgeInsets.only(top: 8),
                                    child: Padding(
                                      padding: EdgeInsets.all(12),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: <Widget>[
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 16),
                                            child: Row(
                                              children: <Widget>[
                                                Expanded(
                                                  child: Text(
                                                    'Berfin Gürz',
                                                    style: GoogleFonts.inter(
                                                        fontSize: 17),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () => print("tapped!"),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 4),
                                                        child: Text('Edit'),
                                                      ),
                                                      Icon(
                                                        Icons.edit,
                                                        size: 10,
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 16),
                                            child: Row(
                                              children: <Widget>[
                                                Expanded(
                                                  child: Text(
                                                    'gurzberfin@gmail.com',
                                                    style: GoogleFonts.inter(
                                                        fontSize: 17),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () => print("tapped!"),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 4),
                                                        child: Text('Edit'),
                                                      ),
                                                      Icon(
                                                        Icons.edit,
                                                        size: 10,
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 16),
                                            child: Row(
                                              children: <Widget>[
                                                Expanded(
                                                  child: Text(
                                                    '01-10-1998',
                                                    style: GoogleFonts.inter(
                                                        fontSize: 17),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () => print("tapped!"),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 4),
                                                        child: Text('Edit'),
                                                      ),
                                                      Icon(
                                                        Icons.edit,
                                                        size: 10,
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 16),
                                            child: Row(
                                              children: <Widget>[
                                                Expanded(
                                                  child: Text(
                                                    'Security',
                                                    style: GoogleFonts.inter(
                                                        fontSize: 17),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () => print("tapped!"),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Icon(
                                                        Icons.navigate_next,
                                                        size: 16,
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          /* Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 16),
                                            child: Row(
                                              children: <Widget>[
                                                Expanded(
                                                  child:
                                                      Text('Manage Accounts'),
                                                ),
                                                GestureDetector(
                                                  child: Row(
                                                    children: <Widget>[
                                                      Icon(
                                                        Icons.navigate_next,
                                                        size: 16,
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ) */
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Container(
                                    margin: EdgeInsets.only(top: 8),
                                    child: Padding(
                                      padding: EdgeInsets.all(12),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 16),
                                            child: Row(
                                              children: <Widget>[
                                                Expanded(
                                                  child: Text(
                                                    'Transaction Restrictions',
                                                    style: GoogleFonts.inter(
                                                        fontSize: 17),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () => print("tapped!"),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Icon(
                                                        Icons.navigate_next,
                                                        size: 16,
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 16),
                                            child: Row(
                                              children: <Widget>[
                                                Expanded(
                                                  child: Text(
                                                    'Defined Phone Management',
                                                    style: GoogleFonts.inter(
                                                        fontSize: 17),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () => print("tapped!"),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Icon(
                                                        Icons.navigate_next,
                                                        size: 16,
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Container(
                                    margin: EdgeInsets.only(top: 8),
                                    child: Padding(
                                      padding: EdgeInsets.all(12),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 8),
                                            child: Row(
                                              children: <Widget>[
                                                Expanded(
                                                  child: Text(
                                                    'Mobile Verification Code Unblocking',
                                                    style: GoogleFonts.inter(
                                                        fontSize: 17),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () => print("tapped!"),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Icon(
                                                        Icons.navigate_next,
                                                        size: 16,
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Container(
                                    margin: EdgeInsets.only(top: 8),
                                    child: Padding(
                                      padding: EdgeInsets.all(12),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 16),
                                            child: Row(
                                              children: <Widget>[
                                                Expanded(
                                                  child: Text(
                                                    'Application Tour',
                                                    style: GoogleFonts.inter(
                                                        fontSize: 17),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () => print("tapped!"),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Icon(
                                                        Icons.navigate_next,
                                                        size: 16,
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 16),
                                            child: Row(
                                              children: <Widget>[
                                                Expanded(
                                                  child: Text(
                                                    'Notification Preferences',
                                                    style: GoogleFonts.inter(
                                                        fontSize: 17),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () => print("tapped!"),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Icon(
                                                        Icons.navigate_next,
                                                        size: 16,
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        } else {
                          return Container(); /*
                          return Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                            height: 135,
                            child: Card(
                              child: Container(
                                margin: EdgeInsets.all(16),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 16, right: 20),
                                      child: Image.asset(
                                        'assets/images/ico_gift.png',
                                        height: 73,
                                        width: 108,
                                      ),
                                    ),
                                    Expanded(
                                        child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 8),
                                          child: Text(
                                            'Share the\ngift of love',
                                            style: GoogleFonts.inter(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 14),
                                          ),
                                        ),
                                        GestureDetector(
                                          child: Container(
                                            width: 135,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(11))),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 16, vertical: 8),
                                            child: Text(
                                              'SHARE',
                                              style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontSize: 20),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        )
                                      ],
                                    ))
                                  ],
                                ),
                              ),
                            ),
                          );*/
                        }
                      })),
            )
          ],
        ),
      ),
    );
  }
}
