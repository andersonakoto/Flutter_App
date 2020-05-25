import 'dart:io';

import 'package:extended_tabs/extended_tabs.dart';
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

class SavingTools extends StatefulWidget {
  @override
  _SavingToolsState createState() => _SavingToolsState();
}

class _SavingToolsState extends State<SavingTools> with TickerProviderStateMixin {

  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }


  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
    ));




    Widget goals = Container(
        margin:
        EdgeInsets.only(left: 20.0, top: 40.0, right: 0.0, bottom: 0.0),
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
        margin:
        EdgeInsets.only(left: 10.0, top: 40.0, right: 0.0, bottom: 0.0),
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
        margin:
        EdgeInsets.only(left: 5.0, top: 40.0, right: 0.0, bottom: 0.0),
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


    Widget progressbar = LinearPercentIndicator(
      lineHeight: 10,
      percent: _progressValue,
      backgroundColor: Colors.blue[700],
      progressColor: Colors.yellow[700],
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
                color: Colors.blue,
                onPressed: () {},
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: 85.0, top: 0.0, right: 0.0, bottom: 0.0),
              child: Text(
                'Saving Tools',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[800],
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ));

    Widget goal_title = Container(
        margin: EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topLeft,
        child: Text(
          'Financial Goals',
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey[700],
          ),
          textAlign: TextAlign.left,
        ));

    Widget financial_stmt = Container(
        margin: EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topLeft,
        child: Text(
          'People make the wrong financial decisions losing money saved for years. Loans are availed without understanding interest payments.',
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey[700],
          ),
          textAlign: TextAlign.left,
        ));

    Widget gather_line = Container(
      margin: EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
      child: Divider(
        indent: 5,
        endIndent: 5,
        color: Colors.yellow[700],
        thickness: 1.5,
      ),
    );


    Widget gather_container = Container(
        margin: EdgeInsets.only(left: 5.0, top: 20.0, right: 5.0, bottom: 0.0),
        alignment: Alignment.center,
        height: 300,
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
                  'Demo Goal Name',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[700], fontWeight: FontWeight.w900,
                  ),
                  textAlign: TextAlign.left,
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 90.0, top: 0.0, right: 0.0, bottom: 0.0),
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
                        'Amount',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey[700],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 160.0),
                      child: Text(
                        '\$300',
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
                        'Date Created ',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey[700],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 70.0),
                      child: Text(
                        'April, 2020',
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
                        color: Colors.yellow[700],
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

    Widget add_goal_btn = Container(
      margin: EdgeInsets.only(left: 0, top: 120, right: 0),
      alignment: Alignment.bottomCenter,
      width: 110,
      child: RoundedButtonWithIcon(
        onPressed: (){},
        icon:Icons.add,
        title: "Add Goal",
        buttonColor: Colors.grey[700], splashColor: Colors.grey,
      ),
    );


    Widget wish_title = Container(
        margin: EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topLeft,
        child: Text(
          'Wish List',
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey[700],
          ),
          textAlign: TextAlign.left,
        ));

    Widget wish_stmt = Container(
        margin: EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topLeft,
        child: Text(
          "People make the wrong financial decisions losing money saved for years. Loans are availed without understanding interest payments.",

          style: TextStyle(
            fontSize: 18,
            color: Colors.grey[700],
          ),
          textAlign: TextAlign.left,
        ));

    Widget wish_line = Container(
      margin: EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
      child: Divider(
        indent: 5,
        endIndent: 5,
        color: Colors.yellow[700],
        thickness: 1.5,
      ),
    );


    Widget wish_container = Container(
        margin: EdgeInsets.only(left: 5.0, top: 20.0, right: 5.0, bottom: 0.0),
        alignment: Alignment.center,
        height: 300,
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
                  'Demo Wish Name',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[700], fontWeight: FontWeight.w900,
                  ),
                  textAlign: TextAlign.left,
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 90.0, top: 0.0, right: 0.0, bottom: 0.0),
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
                        'Amount',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey[700],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 160.0),
                      child: Text(
                        '\$300',
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
                        'Date Created ',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey[700],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 70.0),
                      child: Text(
                        'April, 2020',
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
                        color: Colors.yellow[700],
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

    Widget add_wish_btn = Container(
      margin: EdgeInsets.only(left: 0, top: 120, right: 0),
      alignment: Alignment.bottomCenter,
      width: 110,
      child: RoundedButtonWithIcon(
        onPressed: (){},
        icon:Icons.add,
        title: "Add Wish",
        buttonColor: Colors.grey[700], splashColor: Colors.grey,
      ),
    );


   Widget tab  = DefaultTabController(
      length: 2,
      child: SizedBox(
        height: 700.0,
        child: Column(
            children: [
            TabBar(
              indicatorColor: Colors.white,
              unselectedLabelColor: Colors.grey[700],
              unselectedLabelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              labelColor: Colors.blue[700],
              tabs: <Widget>[
                Tab(
                  text: 'Financial Goals',
                ),
                Tab(
                  text: 'Wish List',
                )
              ],
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  Container(
                    child: Column(
                        children: [
                          Row(children: [goal_title, Expanded(child: gather_line)]),
                          financial_stmt,
                          gather_container,
                          add_goal_btn]
                    ),
                  ),
                  Container(
                    child: Column(
                        children: [
                          Row(children: [wish_title, Expanded(child: wish_line)]),
                          wish_stmt,
                          wish_container,
                          add_wish_btn]
                    ),
                    ),
                ],
              ),
            ),
          ],
        ),
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
                        topPart,
                        Row(
                            children: [goals, gatherUps, peace]
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                        child: tab,
                        ),
                      ],
                    )
                ),
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
  }
}
