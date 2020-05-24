import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:FyiFli/main.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class GatherUps extends StatefulWidget {
  @override
  _GatherUpsState createState() => _GatherUpsState();
}

class _GatherUpsState extends State<GatherUps> {
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
                  left: 80.0, top: 0.0, right: 0.0, bottom: 0.0),
              child: Text(
                'Gather Ups',
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


    Widget total_gather = Container(
        margin: EdgeInsets.only(left: 20.0, top: 60.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topLeft,
        child: Text(
          'Total Gather Ups :',
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey[700],
          ),
          textAlign: TextAlign.left,
        ));

    Widget gather_result = Container(
        margin: EdgeInsets.only(left: 0.0, top: 60.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topLeft,
        child: Text(
          '+\$2.30',
          style: TextStyle(
            fontSize: 24,
            color: Colors.yellow[700],
          ),
          textAlign: TextAlign.left,
        ));

    Widget gather_container1 = Container(
        margin: EdgeInsets.only(left: 0.0, top: 40.0, right: 0.0, bottom: 0.0),
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
                  left: 25.0, top: 25.0, right: 0.0, bottom: 0.0),
              child: Row(
                children: [
                  Text(
                    'Peace of Mind                     ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[700],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    '\$300 ',
                    style: TextStyle(
                      fontSize: 28, fontWeight: FontWeight.w900,
                      color: Colors.yellow[700],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ],
        ));
    Widget gather_container2 = Container(
        margin: EdgeInsets.only(left: 0.0, top: 40.0, right: 0.0, bottom: 160.0),
        height: 260,
        width: 340,
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
                  left: 20.0, top: 20.0, right: 0.0, bottom: 0.0),
              child: Row(
                children: [
                  Text(
                    '+\$0.5      ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue[700],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    'Starbucks                      ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[700],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    '\$3',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.yellow[700],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
              child: Divider(
                indent: 5,
                endIndent: 5,
                color: Colors.grey[700],
                thickness: 1.5,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: 20.0, top: 20.0, right: 0.0, bottom: 0.0),
              child: Row(
                children: [
                  Text(
                    '+\$0.3      ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue[700],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    'Grocery Shop               ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[700],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    '\$8',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.yellow[700],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
              child: Divider(
                indent: 5,
                endIndent: 5,
                color: Colors.grey[700],
                thickness: 1.5,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: 20.0, top: 20.0, right: 0.0, bottom: 0.0),
              child: Row(
                children: [
                  Text(
                    '+\$0.5      ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue[700],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    'Sandwich Shop           ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[700],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    '\$10',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.yellow[700],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
              child: Divider(
                indent: 5,
                endIndent: 5,
                color: Colors.grey[700],
                thickness: 1.5,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: 20.0, top: 20.0, right: 0.0, bottom: 0.0),
              child: Row(
                children: [
                  Text(
                    '+\$1.0      ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue[700],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    'Gas Station                  ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[700],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    '\$24',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.yellow[700],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ],
        ));



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
                        Row(
                            children: [goals, gatherUps, peace]
                        ),
                        gather_container1,
                        Row(
                            children: [total_gather, gather_result]
                        ),
                        gather_container2
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



