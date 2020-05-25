import 'dart:io';

import 'package:FyiFli/app_screens/dasboard_screens/ebooknav.dart';
import 'package:FyiFli/app_screens/dasboard_screens/gather_ups.dart';
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
                    color: Colors.blue,
                    onPressed: () {},
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
                  Asset(),
                  Gross(),
                  Amor(),
                  Bonds(),
                  Capital(),
                  Interest(),
                  Dependent(),
                  Escrow(),
                  Compensation()
                ],
              ),
            )
          ]
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

class Asset extends StatefulWidget {
  AssetState createState() => new AssetState();
}

class AssetState extends State<Asset> {
  bool isExpanded;

  @override
  void initState() {
    this.isExpanded = false;
    super.initState();
  }

  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent, shadowColor: Colors.transparent,
        child:
    CustomExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          this.isExpanded = !isExpanded;
        });
      },
      children: <ExpansionPanel>[
        new ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded)
          => asset_head, body: asset_expand,
          isExpanded: this.isExpanded,
        ),
      ],
    )
    );
  }
}

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


class Gross extends StatefulWidget {
  GrossState createState() => new GrossState();
}

class GrossState extends State<Gross> {
  bool isExpanded;

  @override
  void initState() {
    this.isExpanded = false;
    super.initState();
  }

  Widget build(BuildContext context) {
    return Card(
        color: Colors.transparent, shadowColor: Colors.transparent,
        child: CustomExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          this.isExpanded = !isExpanded;
        });
      },
      children: <ExpansionPanel>[
        new ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded)
          => gross_head, body: gross_expand,
          isExpanded: this.isExpanded,
        ),
      ],
    )
    );
  }
}


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


class Amor extends StatefulWidget {
  AmorState createState() => new AmorState();
}

class AmorState extends State<Amor> {
  bool isExpanded;

  @override
  void initState() {
    this.isExpanded = false;
    super.initState();
  }

  Widget build(BuildContext context) {
    return Card(
        color: Colors.transparent, shadowColor: Colors.transparent,
        child: CustomExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          this.isExpanded = !isExpanded;
        });
      },
      children: <ExpansionPanel>[
        new ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded)
          => amor_head, body: amor_expand,
          isExpanded: this.isExpanded,
        ),
      ],
    )
    );
  }
}

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


class Bonds extends StatefulWidget {
  BondsState createState() => new BondsState();
}

class BondsState extends State<Bonds> {
  bool isExpanded;

  @override
  void initState() {
    this.isExpanded = false;
    super.initState();
  }

  Widget build(BuildContext context) {
    return Card(
        color: Colors.transparent, shadowColor: Colors.transparent,
        child: CustomExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          this.isExpanded = !isExpanded;
        });
      },
      children: <ExpansionPanel>[
        new ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded)
          => bonds_head, body: bonds_expand,
          isExpanded: this.isExpanded,
        ),
      ],
    )
    );
  }
}

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


class Capital extends StatefulWidget {
  CapitalState createState() => new CapitalState();
}

class CapitalState extends State<Capital> {
  bool isExpanded;

  @override
  void initState() {
    this.isExpanded = false;
    super.initState();
  }

  Widget build(BuildContext context) {
    return Card(
        color: Colors.transparent, shadowColor: Colors.transparent,
        child: CustomExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          this.isExpanded = !isExpanded;
        });
      },
      children: <ExpansionPanel>[
        new ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded)
          => capital_head, body: capital_expand,
          isExpanded: this.isExpanded,
        ),
      ],
    )
    );
  }
}

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


class Interest extends StatefulWidget {
  InterestState createState() => new InterestState();
}

class InterestState extends State<Interest> {
  bool isExpanded;

  @override
  void initState() {
    this.isExpanded = false;
    super.initState();
  }

  Widget build(BuildContext context) {
    return Card(
        color: Colors.transparent, shadowColor: Colors.transparent,
        child: CustomExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          this.isExpanded = !isExpanded;
        });
      },
      children: <ExpansionPanel>[
        new ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded)
          => interest_head, body: interest_expand,
          isExpanded: this.isExpanded,
        ),
      ],
    )
    );
  }
}


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


class Dependent extends StatefulWidget {
  DependentState createState() => new DependentState();
}

class DependentState extends State<Dependent> {
  bool isExpanded;

  @override
  void initState() {
    this.isExpanded = false;
    super.initState();
  }

  Widget build(BuildContext context) {
    return Card(
        color: Colors.transparent, shadowColor: Colors.transparent,
        child: CustomExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          this.isExpanded = !isExpanded;
        });
      },
      children: <ExpansionPanel>[
        new ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded)
          => dependent_head, body: dependent_expand,
          isExpanded: this.isExpanded,
        ),
      ],
    )
    );
  }
}

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


class Escrow extends StatefulWidget {
  EscrowState createState() => new EscrowState();
}

class EscrowState extends State<Escrow> {
  bool isExpanded;

  @override
  void initState() {
    this.isExpanded = false;
    super.initState();
  }

  Widget build(BuildContext context) {
    return Card(
        color: Colors.transparent, shadowColor: Colors.transparent,
        child: CustomExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          this.isExpanded = !isExpanded;
        });
      },
      children: <ExpansionPanel>[
        new ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded)
          => escrow_head, body: escrow_expand,
          isExpanded: this.isExpanded,
        ),
      ],
    )
    );
  }
}

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


class Compensation extends StatefulWidget {
  CompensationState createState() => new CompensationState();
}

class CompensationState extends State<Compensation> {
  bool isExpanded;

  @override
  void initState() {
    this.isExpanded = false;
    super.initState();
  }

  Widget build(BuildContext context) {
    return Card(
        color: Colors.transparent, shadowColor: Colors.transparent,
        child: CustomExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          this.isExpanded = !isExpanded;
        });
      },
      children: <ExpansionPanel>[
        new ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded)
          => compensation_head, body: compensation_expand,
          isExpanded: this.isExpanded,
        ),
      ],
    )
    );
  }
}
