import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:FyiFli/main.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class AddEditGoal extends StatefulWidget {
  @override
  _AddEditGoalState createState() => _AddEditGoalState();
}

class _AddEditGoalState extends State<AddEditGoal> {
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
                  left: 80.0, top: 0.0, right: 0.0, bottom: 0.0),
              child: Text(
                'Add/Edit Goal',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[800],
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ));



    Widget goal_name_field = Container(
      margin: EdgeInsets.only(
          left: 30.0, top: 20.0, right: 30.0, bottom: 0.0),
      child: TextField(
        keyboardType: TextInputType.text,
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          labelText: 'Goal Name',
          labelStyle: TextStyle(height: 0.5),
        ),
        style: TextStyle(height: 2.0, color: Colors.blue),
      ),
    );

    Widget goal_description_field = Container(
      margin: EdgeInsets.only(
          left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
      child: TextField(
        keyboardType: TextInputType.text,
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          labelText: 'Description',
          labelStyle: TextStyle(height: 0.5),
        ),
        style: TextStyle(height: 2.0, color: Colors.blue),
      ),
    );

    Widget goal_amount_field = Container(
      margin: EdgeInsets.only(
          left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
      child: TextField(
        keyboardType: TextInputType.numberWithOptions(signed: false, decimal: true),
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          labelText: 'Amount',
          labelStyle: TextStyle(height: 0.5),
        ),
        style: TextStyle(height: 2.0, color: Colors.blue),
      ),
    );


    Widget submit_goal = Container(
        margin:
        EdgeInsets.only(left: 30.0, top: 200.0, right: 30.0, bottom: 40.0),
        width: 800,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.grey[800], borderRadius: BorderRadius.circular(10)),
        child: FlatButton(
          textColor: Colors.white,
          onPressed: () {},
          child: Text(
            "Submit",
            style: TextStyle(fontSize: 20.0),
          ),
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
                        topPart,
                        goal_name_field,
                        goal_description_field,
                        goal_amount_field,
                        submit_goal,

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
  }
}


