import 'dart:io';


import 'package:FyiFli/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:FyiFli/main.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../custom_tile.dart';

class Dictionary extends StatefulWidget {
  @override
  _DictionaryState createState() => _DictionaryState();
}

class _DictionaryState extends State<Dictionary> {


  bool isExpanded1, isExpanded2, isExpanded3, isExpanded4, isExpanded5, isExpanded6, isExpanded7, isExpanded8, isExpanded9;

  @override
  void initState() {
    this.isExpanded1 = false;
    this.isExpanded2 = false;
    this.isExpanded3 = false;
    this.isExpanded4 = false;
    this.isExpanded5 = false;
    this.isExpanded6 = false;
    this.isExpanded7 = false;
    this.isExpanded8 = false;
    this.isExpanded9 = false;

    super.initState();
  }





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
            ClipOval(
              child: Material(
                color: Colors.transparent, borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: Container(
                  margin:
                  EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Color(0xFF00249C),
                    onPressed: () => Router.navigator.pushNamed(Router.dashboard),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: 60.0, top: 0.0, right: 0.0, bottom: 0.0),
              child: Text(
                'Financial Dictionary',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[800],
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ));

    Widget asset_head = Container(
        margin: EdgeInsets.only(left: 20.0, top: 0.0, right: 10.0, bottom: 0.0),

        child: Row (
          children: [
            Text(
              'Asset Allocation',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w900
              ),
              textAlign: TextAlign.left,
            ),

          ],
        )
    );
    Widget asset_expand = Container(
        margin: EdgeInsets.only(left: 20.0, top: 0.0, right: 0.0, bottom: 0.0),
        height: 600,
        alignment: Alignment.topLeft,
        child: Row (
          children: [
            Text(
              "Is an investment strategy that deals\n with the balance of risk and reward\n by apportioning a portfolio's assets\n​based on your goals, personal risk\n tolerance and age Stocks can\n provide growth overtime, but is the\n riskiest investment due to the\n market's volatility. bonds and cash\n alternatives make up the three\n types of asset classes, and each\n of these reacts differently to market\n cycles and economic conditions.\n Stocks, for instance, have\n the potential to provide growth\n over time, but may also be more\n volatile. Bonds usually grow slower,\n but are a safer investment than\n investing into an individual are\n generally perceived to have less\n risk. Experienced investor\n encourage people to diversify their\n assets which means to simply\n spread out your investment and do\n not put all your eggs in one basket.",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[700],
              ),
              textAlign: TextAlign.left,
            ),
          ],
        )
    );
    Widget asset = Card(
        color: Colors.transparent, shadowColor: Colors.transparent,
        child: CustomExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              this.isExpanded1 = !isExpanded;
            });
          },
          children: <ExpansionPanel>[
            new ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded)
              => asset_head, body: asset_expand,
              isExpanded: this.isExpanded1,
            ),
          ],
        )
    );

    Widget gross_head = Container(
        margin: EdgeInsets.only(left: 20.0, top: 0.0, right: 10.0, bottom: 0.0),

        child: Row (
          children: [
            Text(
              'Adjusted Gross Income',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w900
              ),
              textAlign: TextAlign.left,
            ),

          ],
        )
    );
    Widget gross_expand = Container(
        margin: EdgeInsets.only(left: 50.0, top: 0.0, right: 0.0, bottom: 0.0),
        height: 60,
        child: Row (
        )
    );
    Widget gross = Card(
        color: Colors.transparent, shadowColor: Colors.transparent,
        child: CustomExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              this.isExpanded2 = !isExpanded;
            });
          },
          children: <ExpansionPanel>[
            new ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded)
              => gross_head, body: gross_expand,
              isExpanded: this.isExpanded2,
            ),
          ],
        )
    );

    Widget amor_head = Container(
        margin: EdgeInsets.only(left: 20.0, top: 0.0, right: 10.0, bottom: 0.0),
        child: Row (
          children: [
            Text(
              'Amortization',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w900
              ),
              textAlign: TextAlign.left,
            ),

          ],
        )
    );
    Widget amor_expand = Container(
        margin: EdgeInsets.only(left: 50.0, top: 0.0, right: 0.0, bottom: 0.0),
        height: 60,
        child: Row (
        )
    );
    Widget amor = Card(
        color: Colors.transparent, shadowColor: Colors.transparent,
        child: CustomExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              this.isExpanded3 = !isExpanded;
            });
          },
          children: <ExpansionPanel>[
            new ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded)
              => amor_head, body: amor_expand,
              isExpanded: this.isExpanded3,
            ),
          ],
        )
    );

    Widget bonds_head = Container(
        margin: EdgeInsets.only(left: 20.0, top: 0.0, right: 10.0, bottom: 0.0),

        child: Row (
          children: [
            Text(
              'Bonds',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w900
              ),
              textAlign: TextAlign.left,
            ),
          ],
        )
    );
    Widget bonds_expand = Container(
        margin: EdgeInsets.only(left: 50.0, top: 0.0, right: 0.0, bottom: 0.0),
        height: 60,
        child: Row (

        )
    );
    Widget bonds = Card(
        color: Colors.transparent, shadowColor: Colors.transparent,
        child: CustomExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              this.isExpanded4 = !isExpanded;
            });
          },
          children: <ExpansionPanel>[
            new ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded)
              => bonds_head, body: bonds_expand,
              isExpanded: this.isExpanded4,
            ),
          ],
        )
    );

    Widget capital_head = Container(
        margin: EdgeInsets.only(left: 20.0, top: 0.0, right: 10.0, bottom: 0.0),

        child: Row (
          children: [
            Text(
              'Capital Gains',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w900
              ),
              textAlign: TextAlign.left,
            ),
          ],
        )
    );
    Widget capital_expand = Container(
        margin: EdgeInsets.only(left: 50.0, top: 0.0, right: 0.0, bottom: 0.0),
        height: 60,
        child: Row (
        )
    );
    Widget capital = Card(
        color: Colors.transparent, shadowColor: Colors.transparent,
        child: CustomExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              this.isExpanded5 = !isExpanded;
            });
          },
          children: <ExpansionPanel>[
            new ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded)
              => capital_head, body: capital_expand,
              isExpanded: this.isExpanded5,
            ),
          ],
        )
    );

    Widget interest_head = Container(
        margin: EdgeInsets.only(left: 20.0, top: 0.0, right: 10.0, bottom: 0.0),

        child: Row (
          children: [
            Text(
              'Compound Interest',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w900
              ),
              textAlign: TextAlign.left,
            ),

          ],
        )
    );
    Widget interest_expand = Container(
        margin: EdgeInsets.only(left: 50.0, top: 0.0, right: 0.0, bottom: 0.0),
        height: 60,
        child: Row (

        )
    );
    Widget interest = Card(
        color: Colors.transparent, shadowColor: Colors.transparent,
        child: CustomExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              this.isExpanded6 = !isExpanded;
            });
          },
          children: <ExpansionPanel>[
            new ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded)
              => interest_head, body: interest_expand,
              isExpanded: this.isExpanded6,
            ),
          ],
        )
    );

    Widget dependent_head = Container(
        margin: EdgeInsets.only(left: 20.0, top: 0.0, right: 10.0, bottom: 0.0),

        child: Row (
          children: [
            Text(
              'Dependent',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w900
              ),
              textAlign: TextAlign.left,
            ),
          ],
        )
    );
    Widget dependent_expand = Container(
        margin: EdgeInsets.only(left: 50.0, top: 0.0, right: 0.0, bottom: 0.0),
        height: 60,
        child: Row (
        )
    );
    Widget dependent = Card(
        color: Colors.transparent, shadowColor: Colors.transparent,
        child: CustomExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              this.isExpanded7 = !isExpanded;
            });
          },
          children: <ExpansionPanel>[
            new ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded)
              => dependent_head, body: dependent_expand,
              isExpanded: this.isExpanded7,
            ),
          ],
        )
    );

    Widget escrow_head = Container(
        margin: EdgeInsets.only(left: 20.0, top: 0.0, right: 10.0, bottom: 0.0),

        child: Row (
          children: [
            Text(
              'Escrow',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w900
              ),
              textAlign: TextAlign.left,
            ),

          ],
        )
    );
    Widget escrow_expand = Container(
        margin: EdgeInsets.only(left: 50.0, top: 0.0, right: 0.0, bottom: 0.0),
        height: 60,
        child: Row (

        )
    );
    Widget escrow = Card(
        color: Colors.transparent, shadowColor: Colors.transparent,
        child: CustomExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              this.isExpanded8 = !isExpanded;
            });
          },
          children: <ExpansionPanel>[
            new ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded)
              => escrow_head, body: escrow_expand,
              isExpanded: this.isExpanded8,
            ),
          ],
        )
    );

    Widget compensation_head = Container(
        margin: EdgeInsets.only(left: 20.0, top: 0.0, right: 10.0, bottom: 0.0),

        child: Row (
          children: [
            Text(
              'Executive Compensation',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w900
              ),
              textAlign: TextAlign.left,
            ),
          ],
        )
    );
    Widget compensation_expand = Container(
        margin: EdgeInsets.only(left: 50.0, top: 0.0, right: 0.0, bottom: 0.0),
        height: 60,
        child: Row (

        )
    );
    Widget compensation = Card(
        color: Colors.transparent, shadowColor: Colors.transparent,
        child: CustomExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              this.isExpanded9 = !isExpanded;
            });
          },
          children: <ExpansionPanel>[
            new ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded)
              => compensation_head, body: compensation_expand,
              isExpanded: this.isExpanded9,
            ),
          ],
        )
    );



    Widget sub_container = Container(
      margin: EdgeInsets.only(left: 0.0, top: 80.0, right: 0.0, bottom: 0.0),
      decoration: BoxDecoration(
          color: Colors.white),

      child: Column(
          children: [

            Container(
              margin: EdgeInsets.only(left: 10.0, top: 40.0, right: 10.0, bottom: 40.0),
              child: Column(
                children: [
                  asset,
                  gross,
                  amor,
                  bonds,
                  capital,
                  interest,
                  dependent,
                  escrow,
                  compensation
                ],
              ),
            )
          ]
      ),
    );

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
                        sub_container,
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
