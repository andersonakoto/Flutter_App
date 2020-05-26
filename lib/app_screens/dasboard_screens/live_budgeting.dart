import 'dart:io';

import 'package:FyiFli/routes/router.gr.dart';

import '../custom_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:FyiFli/main.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class LiveBudgeting extends StatefulWidget {
  @override
  _LiveBudgetingState createState() => _LiveBudgetingState();
}

class _LiveBudgetingState extends State<LiveBudgeting> {

  bool isExpanded1, isExpanded2;

  @override
  void initState() {
    this.isExpanded1 = false;
    this.isExpanded2 = false;

    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
    ));


    Widget panel1_head = Container(
        margin: EdgeInsets.only(left: 20.0, top: 0.0, right: 10.0, bottom: 0.0),

        child: Row (
          children: [
            Tab(
                icon: Image.asset("assets/images/grocery.png", width: 30)
            ),
            Text(
              '           Grocery Shop       ',
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF00249C),
                  fontWeight: FontWeight.w900
              ),
              textAlign: TextAlign.left,
            ),
            Text(
              '\$8',
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF00249C),
                  fontWeight: FontWeight.w900
              ),
              textAlign: TextAlign.left,
            ),
          ],
        )
    );
    Widget panel1_expand = Container(
        margin: EdgeInsets.only(left: 50.0, top: 0.0, right: 0.0, bottom: 0.0),
        height: 60,
        child: Row (
          children: [
            Text(
              'Rice           ',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[700],
              ),
              textAlign: TextAlign.left,
            ),
            Text(
              'Aug 21              ',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[700],
              ),
              textAlign: TextAlign.left,
            ),
            Text(
              '\$2.00',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[700],
              ),
              textAlign: TextAlign.left,
            )
          ],
        )
    );
    Widget panel1 = Card(
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
              => panel1_head, body: panel1_expand,
              isExpanded: this.isExpanded1,
            ),
          ],
        )
    );


    Widget panel2_head = Container(
        margin: EdgeInsets.only(left: 20.0, top: 0.0, right: 10.0, bottom: 0.0),

        child: Row (
          children: [
            Tab(
                icon: Image.asset("assets/images/sandwich.png", width: 30)
            ),
            Text(
              '           Sandwich Shop    ',
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF00249C),
                  fontWeight: FontWeight.w900
              ),
              textAlign: TextAlign.left,
            ),
            Text(
              '\$8',
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF00249C),
                  fontWeight: FontWeight.w900
              ),
              textAlign: TextAlign.left,
            ),
          ],
        )
    );
    Widget panel2_expand = Container(
        margin: EdgeInsets.only(left: 50.0, top: 0.0, right: 0.0, bottom: 0.0),
        height: 60,
        child: Row (
          children: [
            Text(
              'Rice           ',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[700],
              ),
              textAlign: TextAlign.left,
            ),
            Text(
              'Aug 21              ',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[700],
              ),
              textAlign: TextAlign.left,
            ),
            Text(
              '\$2.00',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[700],
              ),
              textAlign: TextAlign.left,
            )
          ],
        )
    );
    Widget panel2 = Card(
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
              => panel2_head, body: panel2_expand,
              isExpanded: this.isExpanded2,
            ),
          ],
        )
    );


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
                onPressed: ()=> Router.navigator.pushNamed(Router.dashboard),
              ),
            ),
        ),
        ),
            Container(
              margin: EdgeInsets.only(
                  left: 80.0, top: 0.0, right: 0.0, bottom: 0.0),
              child: Text(
                'Live Budgeting',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[800],
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ));

    Widget formula = Container(
        margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 0.0, bottom: 0.0),
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
            color: Color(0xFFDAAA00),
          ),
          textAlign: TextAlign.left,
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

    Widget tx_title = Container(
        margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topLeft,
        child: Text(
          'All Transactions',
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey[700],
          ),
          textAlign: TextAlign.left,
        ));

    Widget gather_line = Container(
      margin: EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
      child: Divider(
        indent: 5,
        endIndent: 5,
        color: Color(0xFFDAAA00),
        thickness: 1.5,
      ),
    );

    Widget sort1 = Container(
        height: 60,
        child: IconButton(
          onPressed: () {},
          icon: Image.asset('assets/images/sort1.png'),
        ));
    Widget sort2 = Container(
        height: 60,
        child: IconButton(
          onPressed: () {},
          icon: Image.asset('assets/images/sort2.png'),
        ));

    Widget sort3 = Container(
        height: 60,
        child: IconButton(
          onPressed: () {},
          icon: Image.asset('assets/images/sort3.png'),
        ));


    Widget credit_card = Container(
        margin: EdgeInsets.only(left: 30.0, top: 40.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topCenter,
        child: Row(
          children: <Widget>[
            Container(
              child: Image.asset(
                'assets/images/credit_card.png',
                alignment: Alignment.center,
                height: 300,
                width: 300,
              ),
            ),
          ],
        ));




    Widget sub_container = Container(
      //alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white),

      child: Column(
        children: [
          credit_card,
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
          Row(children: [tx_title, Expanded(child: gather_line), sort1, sort2, sort3,]),
          Container(
            margin: EdgeInsets.only(left: 10.0, top: 40.0, right: 10.0, bottom: 50.0),
              child: Column(
              children: [
                panel1, panel2,
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

