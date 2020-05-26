import 'dart:io';

import 'package:FyiFli/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:FyiFli/main.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class AddEditCategory extends StatefulWidget {
  @override
  _AddEditCategoryState createState() => _AddEditCategoryState();
}

class _AddEditCategoryState extends State<AddEditCategory> {
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
                color: Color(0xFF00249C),
                onPressed: () => Router.navigator.pushNamed(Router.savingTools),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: 60.0, top: 0.0, right: 0.0, bottom: 0.0),
              child: Text(
                'Add/Edit Category',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[800],
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ));



    Widget category_name_field = Container(
      margin: EdgeInsets.only(
          left: 30.0, top: 20.0, right: 30.0, bottom: 0.0),
      child: TextField(
        keyboardType: TextInputType.text,
        cursorColor: Color(0xFF00249C),
        decoration: InputDecoration(
          labelText: 'Category Name',
          labelStyle: TextStyle(height: 0.5),
        ),
        style: TextStyle(height: 2.0, color: Color(0xFF00249C)),
      ),
    );

    Widget category_description_field = Container(
      margin: EdgeInsets.only(
          left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
      child: TextField(
        keyboardType: TextInputType.text,
        cursorColor: Color(0xFF00249C),
        decoration: InputDecoration(
          labelText: 'Description',
          labelStyle: TextStyle(height: 0.5),
        ),
        style: TextStyle(height: 2.0, color: Color(0xFF00249C)),
      ),
    );

    Widget submit_category = Container(
        margin:
        EdgeInsets.only(left: 30.0, top: 250.0, right: 30.0, bottom: 0.0),
        width: 800,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.grey[800], borderRadius: BorderRadius.circular(10)),
        child: FlatButton(
          textColor: Colors.white,
          onPressed: () => Router.navigator.pushNamed(Router.savingTools),
          child: Text(
            "Submit",
            style: TextStyle(fontSize: 20.0),
          ),
        ));


    Widget add_item_expense = Container(
        margin: EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.bottomCenter,
        child: FlatButton(
          textColor: Colors.grey[700],
          onPressed: () {},
          child: Text("Or Add Item Expense",
              textAlign: TextAlign.left, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
        ));

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
                        category_name_field,
                        category_description_field,
                        submit_category,
                        add_item_expense
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


