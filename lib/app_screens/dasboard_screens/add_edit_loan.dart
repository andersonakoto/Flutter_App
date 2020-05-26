import 'dart:io';

import 'package:FyiFli/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:FyiFli/main.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class AddEditLoan extends StatefulWidget {
  @override
  _AddEditLoanState createState() => _AddEditLoanState();
}

class _AddEditLoanState extends State<AddEditLoan> {
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
                onPressed: () => Router.navigator.pushNamed(Router.debtEliminator),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: 80.0, top: 0.0, right: 0.0, bottom: 0.0),
              child: Text(
                'Add/Edit Loan',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[800],
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ));



    Widget interest_rate_field = Container(
      margin: EdgeInsets.only(
          left: 30.0, top: 20.0, right: 30.0, bottom: 0.0),
      child: TextField(
        keyboardType: TextInputType.text,
        cursorColor: Color(0xFF00249C),
        decoration: InputDecoration(
          labelText: 'Interest Rate',
          labelStyle: TextStyle(height: 0.5),
        ),
        style: TextStyle(height: 2.0, color: Colors.blue),
      ),
    );

    Widget loan_name_field = Container(
      margin: EdgeInsets.only(
          left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
      child: TextField(
        keyboardType: TextInputType.text,
        cursorColor: Color(0xFF00249C),
        decoration: InputDecoration(
          labelText: 'Loan Name',
          labelStyle: TextStyle(height: 0.5),
        ),
        style: TextStyle(height: 2.0, color: Color(0xFF00249C)),
      ),
    );

    Widget bank_address_field = Container(
      margin: EdgeInsets.only(
          left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
      child: TextField(
        keyboardType: TextInputType.text,
        cursorColor: Color(0xFF00249C),
        decoration: InputDecoration(
          labelText: 'Bank Address',
          labelStyle: TextStyle(height: 0.5),
        ),
        style: TextStyle(height: 2.0, color:Color(0xFF00249C)),
      ),
    );

    Widget bank_name_field = Container(
      margin: EdgeInsets.only(
          left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
      child: TextField(
        keyboardType: TextInputType.text,
        cursorColor: Color(0xFF00249C),
        decoration: InputDecoration(
          labelText: 'Bank Name',
          labelStyle: TextStyle(height: 0.5),
        ),
        style: TextStyle(height: 2.0, color: Color(0xFF00249C)),
      ),
    );

    Widget loan_description = Container(
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

    Widget monthly_payment = Container(
      margin: EdgeInsets.only(
          left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
      child: TextField(
        keyboardType: TextInputType.numberWithOptions(signed: false, decimal: true),
        cursorColor: Color(0xFF00249C),
        decoration: InputDecoration(
          labelText: 'Monthly Payment',
          labelStyle: TextStyle(height: 0.5),
        ),
        style: TextStyle(height: 2.0, color: Color(0xFF00249C)),
      ),
    );

    Widget payment_date = Container(
      margin: EdgeInsets.only(
          left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
      child: TextField(
        keyboardType: TextInputType.text,
        cursorColor: Color(0xFF00249C),
        decoration: InputDecoration(
          labelText: 'Payment Date',
          labelStyle: TextStyle(height: 0.5),
        ),
        style: TextStyle(height: 2.0, color: Color(0xFF00249C)),
      ),
    );

    Widget loan_duration = Container(
      margin: EdgeInsets.only(
          left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
      child: TextField(
        keyboardType: TextInputType.text,
        cursorColor: Color(0xFF00249C),
        decoration: InputDecoration(
          labelText: 'Loan Duration',
          labelStyle: TextStyle(height: 0.5),
        ),
        style: TextStyle(height: 2.0, color: Color(0xFF00249C)),
      ),
    );



    Widget submit_loan = Container(
        margin:
        EdgeInsets.only(left: 30.0, top: 60.0, right: 30.0, bottom: 40.0),
        width: 800,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.grey[800], borderRadius: BorderRadius.circular(10)),
        child: FlatButton(
          textColor: Colors.white,
          onPressed: () => Router.navigator.pushNamed(Router.debtEliminator),
          child: Text(
            "Submit",
            style: TextStyle(fontSize: 20.0),
          ),
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
                        interest_rate_field,
                        loan_name_field,
                        bank_address_field,
                        bank_name_field,
                        loan_description,
                        monthly_payment,
                        payment_date,
                        loan_duration,
                        submit_loan
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


