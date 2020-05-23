import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:FyiFli/main.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class Congratulations extends StatefulWidget {
  @override
  _CongratulationsState createState() => _CongratulationsState();
}

class _CongratulationsState extends State<Congratulations> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
    ));

    Widget congratsTitle = Container(
        margin: EdgeInsets.only(left: 120.0, top: 60.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topCenter,
        child: Row(
          children: <Widget>[
            Container(
              child: Text(
                'Congratulations',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ));

    Widget linkedTitle = Container(
        margin: EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topCenter,
        child: Text(
          'Your card has been linked with your live Budgeting Tool.',
          style: TextStyle(
              fontSize: 20,
              color: Colors.grey[800],
              fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ));

    Widget congratsImage = Container(
      margin: EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
      alignment: Alignment.topCenter,
      child: Image.asset(
        'assets/images/congrats.png',
        alignment: Alignment.center,
        height: 300,
        width: 500,
      ),
    );

    Widget balance = Container(
      margin: EdgeInsets.only(left: 40.0, top: 0.0, right: 0.0, bottom: 0.0),
      alignment: Alignment.center,
        child: Text(
          "Your Current Balance is ",
          style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
              fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        )
    );

    Widget amount = Container(
        margin: EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.center,
        child: Text(
          "\$5,000",
          style: TextStyle(
              fontSize: 38,
              color: Colors.blue,
              fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        )
    );

    Widget whats_next = Container(
        margin: EdgeInsets.only(left: 30.0, top: 40.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.centerLeft,
        child: Text(
          "What's Next?",
          style: TextStyle(
              fontSize: 24,
              color: Colors.grey[800],
              fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ));

    Widget expenses_button = Container(
        margin:
            EdgeInsets.only(left: 30.0, top: 20.0, right: 30.0, bottom: 0.0),
        width: 800,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.grey[800], borderRadius: BorderRadius.circular(10)),
        child: FlatButton(
          textColor: Colors.white,
          onPressed: () {},
          child: Text(
            "Start Adding Expenses",
            style: TextStyle(fontSize: 20.0),
          ),
        ));

    Widget peace_of_mind_button = Container(
      margin: EdgeInsets.only(left: 30.0, top: 20.0, right: 30.0, bottom: 0.0),
      width: 800,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.grey[800], borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 15.0),
            child: FlatButton(
              textColor: Colors.white,
              onPressed: () {},
              child: Text(
                "Set up a Peace Of Mind Fund",
                style: TextStyle(fontSize: 15.0),
              ),
            ),
          ),
          Container(
            child: FlatButton(
              textColor: Colors.white,
              onPressed: () {},
              child: Icon(Icons.info_outline),
            ),
          ),
        ],
      ),
    );

    final leftSection = Container(
      margin: EdgeInsets.only(left: 80.0, top: 20.0, right: 0.0, bottom: 30.0),
      alignment: Alignment.bottomLeft,
      child: Text(
        "Skip  & ",
        textAlign: TextAlign.right,
        style: TextStyle(
            fontSize: 20, color: Colors.grey[800], fontWeight: FontWeight.w900),
      ),
    );

    final rightSection = Container(
        margin: EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0, bottom: 30.0),
        alignment: Alignment.bottomRight,
        child: FlatButton(
          textColor: Colors.yellow[700],
          onPressed: () {},
          child: Text("Go to Dashboard",
              textAlign: TextAlign.left, style: TextStyle(fontSize: 20)),
        ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Gilroy'),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              congratsTitle,
              linkedTitle,
              congratsImage,
              Row(
                children: [balance, amount]
              ),
              whats_next,
              expenses_button,
              peace_of_mind_button,
              Row(
                children: [leftSection, rightSection],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
