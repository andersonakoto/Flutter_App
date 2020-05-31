import 'dart:io';

import 'package:FyiFli/app_screens/ui/base_widget.dart';
import 'package:FyiFli/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:FyiFli/main.dart';
import 'package:flutter_awesome_buttons/flutter_awesome_buttons.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

enum menu_items { edit, delete }
double _progressValue = 0.4;

class DebtEliminator extends StatefulWidget {
  @override
  _DebtEliminatorState createState() => _DebtEliminatorState();
}

class _DebtEliminatorState extends State<DebtEliminator> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
    ));

    Widget progressbar = LinearPercentIndicator(
      lineHeight: 10,
      percent: _progressValue,
      backgroundColor: Color(0xFF00249C),
      progressColor: Color(0xFFDAAA00),
    );
    Widget topPart = Container(
        margin: EdgeInsets.only(left: 0.0, top: 40.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topCenter,
        child: Row(
          children: <Widget>[
            Container(
              margin:
                  EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                color: Color(0xFF00249C),
                onPressed: () => Router.navigator.pushNamed(Router.dashboard),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: 75.0, top: 0.0, right: 0.0, bottom: 0.0),
              child: Text(
                'Debt Eliminator',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[800],
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ));

    Widget gather_container = Container(
        margin: EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0, bottom: 20.0),
        alignment: Alignment.center,
        height: 290,
        width: 320,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 1.0, // soften the shadow
            spreadRadius: 0.2, //extend the shadow
          )
        ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(children: [
          Container(
            margin:
                EdgeInsets.only(left: 25.0, top: 20.0, right: 0.0, bottom: 0.0),
            child: Row(
              children: [
                Text(
                  'Student Loan',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[700],
                  ),
                  textAlign: TextAlign.left,
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 125.0, top: 0.0, right: 0.0, bottom: 0.0),
                  child: PopupMenuButton<menu_items>(
                    onSelected: (menu_items result) {
                      setState(() {});
                    },
                    itemBuilder: (BuildContext context) =>
                        <PopupMenuEntry<menu_items>>[
                      const PopupMenuItem<menu_items>(
                        value: menu_items.edit,
                        child: Text('Edit'),
                      ),
                      const PopupMenuItem<menu_items>(
                        value: menu_items.delete,
                        child: Text('Delete'),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin:
                EdgeInsets.only(left: 25.0, top: 20.0, right: 0.0, bottom: 0.0),
            child: Row(
              children: [
                Row(
                  children: [
                    Container(
                      child: Text(
                        'Interest Rate ',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey[700],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 110.0),
                      child: Text(
                        '4.53%',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w900),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin:
                EdgeInsets.only(left: 25.0, top: 20.0, right: 0.0, bottom: 0.0),
            child: Row(
              children: [
                Row(
                  children: [
                    Container(
                      child: Text(
                        'Payment Date ',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey[700],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30.0),
                      child: Text(
                        '23, April, 2020',
                        style: TextStyle(fontSize: 20, color: Colors.grey[700]),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 20, top: 40, right: 20),
              child: progressbar),
          Container(
            margin:
                EdgeInsets.only(left: 25.0, top: 20.0, right: 0.0, bottom: 0.0),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 35.0),
                  child: Text(
                    '\$50',
                    style: TextStyle(
                        fontSize: 24,
                        color: Color(0xFFDAAA00),
                        fontWeight: FontWeight.w900),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Remaining to Complete',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w900),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
          ),
        ]));

    Widget add_loan_btn = Container(
      margin: EdgeInsets.only(left: 0, top: 120, right: 0),
     alignment: Alignment.bottomCenter,
     width: 110,
     child: RoundedButtonWithIcon(
        onPressed: ()=> Router.navigator.pushNamed(Router.addEditLoan),
        icon:Icons.add,
        title: "Add Loan",
        buttonColor: Colors.grey[700], splashColor: Colors.grey,
      ),
    );

    return BaseWidget(builder: (context, sizingInformation)
    {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fyi Fli',
        theme: ThemeData(fontFamily: 'Gilroy'),
        home: Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: Colors.white,
          body: Container(
            child: Stack(children: <Widget>[
              Container(
                child: SingleChildScrollView(
                  child: Container(
                      child: Column(
                        children: <Widget>[
                          topPart,
                          gather_container,
                          add_loan_btn
                        ],
                      )),
                ),
              ),
              Container(
                height: 80,
                child: Row(
                  children: [topPart],
                ),
                decoration: BoxDecoration(color: Colors.white),
              ),
            ]),
          ),
        ),
      );
    });
  }
}
