import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:FyiFli/main.dart';
import 'package:grouped_buttons/grouped_buttons.dart';


enum menu_items { edit, delete }



class PeaceofMind_Main extends StatefulWidget {
  @override
  _PeaceofMind_MainState createState() => _PeaceofMind_MainState();
}

class _PeaceofMind_MainState extends State<PeaceofMind_Main> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
    ));



    Widget peaceTitle = Container(
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
                  left: 75.0, top: 0.0, right: 0.0, bottom: 0.0),
              child: Text(
                'Peace of Mind',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[800],
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ));

    Widget goals = Container(
        margin: EdgeInsets.only(left: 20.0, top: 40.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.yellow[800], borderRadius: BorderRadius.circular(20)),
        child: FlatButton(
          textColor: Colors.grey[700],
          onPressed: () {},
          child: Text(
            "Goals",
            style: TextStyle(fontSize: 15.0),
          ),
        ));

    Widget gatherUps = Container(
        margin: EdgeInsets.only(left: 10.0, top: 40.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.yellow[800], borderRadius: BorderRadius.circular(20)),
        child: FlatButton(
          textColor: Colors.grey[700],
          onPressed: () {},
          child: Text(
            "Gather Ups",
            style: TextStyle(fontSize: 15.0),
          ),
        ));

    Widget peace = Container(
        margin: EdgeInsets.only(left: 5.0, top: 40.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.yellow[800], borderRadius: BorderRadius.circular(20)),
        child: FlatButton(
          textColor: Colors.grey[700],
          onPressed: () {},
          child: Text(
            "Peace Of Mind",
            style: TextStyle(fontSize: 15.0),
          ),
        ));

    Widget current_bal = Container(
        margin: EdgeInsets.only(left: 20.0, top: 0.0, right: 0.0, bottom: 0.0),
        child: Row(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  child: Column(children: [
                    Image.asset(
                      'assets/images/blue_rectangle.png',
                      height: 180,
                      width: 150,
                    ),
                  ]),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25, top: 60),
                  child: Column(
                    children: [
                      Text(
                        'Current Balance\n',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        '\$5,000',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));

    Widget monthly_expense = Container(
        margin: EdgeInsets.only(left: 20.0, top: 0.0, right: 0.0, bottom: 0.0),
        child: Row(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  child: Column(children: [
                    Image.asset(
                      'assets/images/blue_rectangle.png',
                      height: 180,
                      width: 150,
                    ),
                  ]),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25, top: 60),
                  child: Column(
                    children: [
                      Text(
                        'Monthly Balance\n',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        '\$2,500',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));

    Widget monthly_savings = Container(
        margin: EdgeInsets.only(left: 20.0, top: 0.0, right: 0.0, bottom: 0.0),
        child: Row(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  child: Column(children: [
                    Image.asset(
                      'assets/images/blue_rectangle.png',
                      height: 180,
                      width: 150,
                    ),
                  ]),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25, top: 60),
                  child: Column(
                    children: [
                      Text(
                        'Monthly Savings\n',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        '\$500',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));

    Widget spendable = Container(
        margin: EdgeInsets.only(left: 20.0, top: 0.0, right: 0.0, bottom: 0.0),
        child: Row(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  child: Column(children: [
                    Image.asset(
                      'assets/images/yellow_rectangle.png',
                      height: 180,
                      width: 150,
                    ),
                  ]),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 60),
                  child: Column(
                    children: [
                      Text(
                        'Spendable Income\n',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        '\$2,000',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));

    Widget gather_container = Container(
        margin: EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.center,
        height: 80,
        width: 320,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 1.0, // soften the shadow
            spreadRadius: 0.2, //extend the shadow
          )
        ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                  left: 25.0, top: 20.0, right: 0.0, bottom: 0.0),
              child: Row(
                children: [
                  Text(
                    'Peace of Mind              ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[700],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    '\$300 ',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                      color: Colors.yellow[700],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  PopupMenuButton<menu_items>(
                    onSelected: (menu_items result) { setState(() { }); },
                    itemBuilder: (BuildContext context) => <PopupMenuEntry<menu_items>>[
                      const PopupMenuItem<menu_items>(
                        value: menu_items.edit,
                        child: Text('Edit'),
                      ),
                      const PopupMenuItem<menu_items>(
                        value: menu_items.delete,
                        child: Text('Delete'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ));

    Widget formula = Container(
        margin: EdgeInsets.only(left: 20.0, top: 40.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topLeft,
        child: Text(
          'Current Balance - Monthly Expense - Monthly',
          style: TextStyle(
            fontSize: 15,
            color: Colors.grey[700],
          ),
          textAlign: TextAlign.left,
        ));

    Widget saving = Container(
        margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topLeft,
        child: Text(
          'Saving = ',
          style: TextStyle(
            fontSize: 15,
            color: Colors.grey[700],
          ),
          textAlign: TextAlign.left,
        ));

    Widget formula_result = Container(
        margin: EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topLeft,
        child: Text(
          'Spendable Income',
          style: TextStyle(
            fontSize: 15,
            color: Colors.yellow[700],
          ),
          textAlign: TextAlign.left,
        ));

    Widget encourage = Container(
      margin: EdgeInsets.only(left: 20.0, top: 40.0, right: 20.0, bottom: 60.0),
      child: Text(
        'We encourage you to open a savings account not for a rainy day but for peace of mind. This will be a savings account that you will NOT TOUCH unless of an emergency that will result in major financial stress. POM fund will be beneficial for you mentally by instilling a feeling of “whatever happens, I know I’m good” which in turn creates peace of mind.',
        style: TextStyle(
          fontSize: 18,
          color: Colors.grey[800],
        ),
        textAlign: TextAlign.left,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fly Fli',
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
                    peaceTitle,
                    Row(children: [goals, gatherUps, peace]),
                    formula,
                    Row(
                      children: [saving, formula_result],
                    ),
                    Row(
                      children: [current_bal, monthly_expense],
                    ),
                    Row(
                      children: [monthly_savings, spendable],
                    ),
                    gather_container,
                    encourage
                  ],
                )),
              ),
            ),
            Container(
              height: 80,
              child: Row(
                children: [peaceTitle],
              ),
              decoration: BoxDecoration(color: Colors.white),
            ),
          ]),
        ),
      ),
    );
  }
}
