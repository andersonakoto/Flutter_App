import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:FyiFli/main.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class AddEditItems extends StatefulWidget {
  @override
  _AddEditItemsState createState() => _AddEditItemsState();
}

class _AddEditItemsState extends State<AddEditItems> {
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
                'Add/Edit Items',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[800],
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ));



    Widget category_item_field = Container(
      margin: EdgeInsets.only(
          left: 30.0, top: 20.0, right: 30.0, bottom: 0.0),
      child: TextField(
        keyboardType: TextInputType.text,
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          labelText: 'Item Category',
          labelStyle: TextStyle(height: 0.5),
        ),
        style: TextStyle(height: 2.0, color: Colors.blue),
      ),
    );

    Widget item_name_field = Container(
      margin: EdgeInsets.only(
          left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
      child: TextField(
        keyboardType: TextInputType.text,
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          labelText: 'Item Name',
          labelStyle: TextStyle(height: 0.5),
        ),
        style: TextStyle(height: 2.0, color: Colors.blue),
      ),
    );

    Widget item_amount_field = Container(
      margin: EdgeInsets.only(
          left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
      child: TextField(
        keyboardType: TextInputType.numberWithOptions(signed: false, decimal: true),
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          labelText: 'Item Amount',
          labelStyle: TextStyle(height: 0.5),
        ),
        style: TextStyle(height: 2.0, color: Colors.blue),
      ),
    );

    Widget merchant_name_field = Container(
      margin: EdgeInsets.only(
          left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
      child: TextField(
        keyboardType: TextInputType.text,
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          labelText: 'Merchant Name',
          labelStyle: TextStyle(height: 0.5),
        ),
        style: TextStyle(height: 2.0, color: Colors.blue),
      ),
    );

    Widget submit_item = Container(
        margin:
        EdgeInsets.only(left: 30.0, top: 140.0, right: 30.0, bottom: 0.0),
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


    Widget add_item_category = Container(
        margin: EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0, bottom: 40.0),
        alignment: Alignment.bottomCenter,
        child: FlatButton(
          textColor: Colors.grey[700],
          onPressed: () {},
          child: Text("Or Add Item Category",
              textAlign: TextAlign.left, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
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
                        category_item_field,
                        item_name_field,
                        item_amount_field,
                        merchant_name_field,
                        submit_item,
                        add_item_category
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


