import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:FyiFli/main.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class Signup5 extends StatefulWidget {
  @override
  _Signup5State createState() => _Signup5State();
}

class _Signup5State extends State<Signup5> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
    ));

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
                color: Colors.blue,
                onPressed: () {},
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: 34.0, top: 0.0, right: 0.0, bottom: 0.0),
              child: Text(
                'Set up your Budgeting Tool',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[800],
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ));

    Widget intro = Container(
        margin: EdgeInsets.only(left: 30.0, top: 20.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topLeft,
        child: Text(
          'Link your credit card and start managing your expenses',
          style: TextStyle(
              fontSize: 20,
              color: Colors.grey[800],
              fontWeight: FontWeight.w700),
          textAlign: TextAlign.left,
        ));

    Widget card_number_field = Container(
      margin: EdgeInsets.only(
          left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
      child: TextField(
        keyboardType: TextInputType.number,
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          labelText: 'Credit Card Number',
          labelStyle: TextStyle(height: 0.5),
        ),
        style: TextStyle(height: 2.0, color: Colors.blue),
      ),
    );

    Widget card_name_field = Container(
      margin: EdgeInsets.only(
          left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
      child: TextField(
        keyboardType: TextInputType.text,
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          labelText: 'Name on Card',
          labelStyle: TextStyle(height: 0.5),
        ),
        style: TextStyle(height: 2.0, color: Colors.blue),
      ),
    );

    Widget expiry_field = Container(
      margin: EdgeInsets.only(
          left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
      width: 120,
      child: TextField(
        keyboardType: TextInputType.text,
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          labelText: 'Expiry Date',
          labelStyle: TextStyle(height: 0.5),
        ),
        style: TextStyle(height: 2.0, color: Colors.blue),

      ),
    );

    Widget cc_field = Container(
      margin: EdgeInsets.only(
          left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
      width: 120,
      child: TextField(
        keyboardType: TextInputType.number,
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          labelText: 'CC Code',
          labelStyle: TextStyle(height: 0.5),
        ),
        style: TextStyle(height: 2.0, color: Colors.blue),
      ),
    );


    Widget card_setup_button = Container(
        margin:
        EdgeInsets.only(left: 30.0, top: 40.0, right: 30.0, bottom: 0.0),
        width: 800,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.grey[800], borderRadius: BorderRadius.circular(10)),
        child: FlatButton(
          textColor: Colors.white,
          onPressed: () {},
          child: Text(
            "Set up my Budgeting Tool",
            style: TextStyle(fontSize: 20.0),
          ),
        ));

    final leftSection = Container(
      margin: EdgeInsets.only(left: 110.0, top: 20.0, right: 0.0, bottom: 0.0),
      alignment: Alignment.bottomLeft,
      child: Text(
        "Skip  & ",
        textAlign: TextAlign.right,
        style: TextStyle(fontSize: 20, color: Colors.grey[800], fontWeight: FontWeight.w900),
      ),
    );

    final rightSection = Container(
        margin: EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.bottomRight,
        child: FlatButton(
          textColor: Colors.yellow[700],
          onPressed: () {},
          child: Text("Sign Up",
              textAlign: TextAlign.left, style: TextStyle(fontSize: 20)),
        ));


    final leftSection2 = Container(
      margin: EdgeInsets.only(left: 30.0, top: 10.0, right: 0.0, bottom: 30.0),
      alignment: Alignment.bottomLeft,
      child: Text(
        "Already have an account?",
        textAlign: TextAlign.right,
        style: TextStyle(fontSize: 20, color: Colors.grey[800], fontWeight: FontWeight.w900),
      ),
    );

    final rightSection2 = Container(
        margin: EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 30.0),
        alignment: Alignment.bottomRight,
        child: FlatButton(
          textColor: Colors.yellow[700],
          onPressed: () {},
          child: Text("Login here.",
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
              topPart,
              intro,
              card_number_field,
              card_name_field,
              Row(
                children: [expiry_field, cc_field],
              ),
              card_setup_button,
              Row(
                children: [leftSection, rightSection],
              ),
              Row(
                children: [leftSection2, rightSection2],
              )
            ],
          ),
        ),
      ),
    );
  }
}
