import 'dart:io';

import 'package:FyiFli/app_screens/dasboard_screens/ebooknav.dart';
import 'package:FyiFli/app_screens/ui/base_widget.dart';
import 'package:FyiFli/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:FyiFli/main.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor:Color(0xFF00249C),
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
    ));

    Widget fyi = Container(
        margin: EdgeInsets.only(left: 20.0, top: 45.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topCenter,
        child: Text(
          'FYI',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ));

    Widget top_left_icon = Container(
        margin: EdgeInsets.only(left: 0.0, top: 40.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topCenter,
        child: Row(
          children: <Widget>[
            Container(
              child: Image.asset(
                'assets/images/symbol.png',
                alignment: Alignment.center,
                height: 30,
                width: 30,
              ),
            ),
          ],
        ));

    Widget fli = Container(
        margin: EdgeInsets.only(left: 0.0, top: 45.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topLeft,
        child: Text(
          'FLI',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ));

    Widget bell_icon = Container(
        margin:
            EdgeInsets.only(left: 200.0, top: 30.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topCenter,
        child: Row(
          children: <Widget>[
        ClipOval(
        child: Material(
              color: Colors.transparent, borderRadius: BorderRadius.all(Radius.circular(10.0)),
              child: Container(
                child: IconButton(
                  icon: Image.asset("assets/images/bell.png"),
                  onPressed: () {},
                ),
              ),
            ),
        ),
          ],
        ));

    Widget welcome = Container(
        margin: EdgeInsets.only(left: 0.0, top: 120.0, right: 0.0, bottom: 0.0),
        child: Column(
          children: <Widget>[
            Container(
              child: Text(
                'Welcome, Hassan',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w900),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: 20.0, top: 10.0, right: 40.0, bottom: 0.0),
              child: Text(
                'Start your Financial\nPlanning',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ));

    Widget welcome_image = Container(
        margin: EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 290.0),
        child: Row(
          children: <Widget>[
            Container(
              child: Image.asset(
                'assets/images/fin1.png',
                height: 100,
                width: 150,
              ),
            ),
          ],
        ));

    Widget learn = Container(
        margin: EdgeInsets.only(left: 20.0, top: 40.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topLeft,
        child: Text(
          'Learn',
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey[700],
          ),
          textAlign: TextAlign.left,
        ));

    Widget learn_line = Container(
      margin: EdgeInsets.only(left: 0.0, top: 40.0, right: 0.0, bottom: 0.0),
      child: Divider(
        indent: 5,
        endIndent: 20,
        color: Color(0xFFDAAA00),
        thickness: 1.5,
      ),
    );

    Widget student_debt_button = Container(
        margin:
            EdgeInsets.only(left: 25.0, top: 40.0, right: 40.0, bottom: 0.0),
        width: 80,
        height: 80,
        alignment: Alignment.center,
        child: RaisedButton(
          color: Colors.white,
          onPressed: () {},
          padding: EdgeInsets.fromLTRB(10, 2, 10, 0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Image.asset(
                'assets/images/student_debt.png',
                alignment: Alignment.center,
                height: 50,
                width: 50,
              ),
              Text(
                'Student Debt',
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          textColor: Colors.grey[700],
        ));

    Widget credit_button = Container(
        margin: EdgeInsets.only(left: 0.0, top: 40.0, right: 40.0, bottom: 0.0),
        width: 80,
        height: 80,
        alignment: Alignment.center,
        child: RaisedButton(
          color: Colors.white,
          onPressed: () {},
          padding: EdgeInsets.fromLTRB(10, 2, 10, 0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Image.asset(
                'assets/images/credit_guide.png',
                alignment: Alignment.center,
                height: 50,
                width: 50,
              ),
              Text(
                'Credit Guidance',
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          textColor: Colors.grey[700],
        ));

    Widget insurance_button = Container(
        margin: EdgeInsets.only(left: 0.0, top: 40.0, right: 0.0, bottom: 0.0),
        width: 80,
        height: 80,
        alignment: Alignment.center,
        child: RaisedButton(
          color: Colors.white,
          onPressed: () {},
          padding: EdgeInsets.fromLTRB(10, 2, 10, 0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Image.asset(
                'assets/images/insurance.png',
                alignment: Alignment.center,
                height: 50,
                width: 50,
              ),
              Text(
                'Insurance 101',
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          textColor: Colors.grey[700],
        ));

    Widget retirement_button = Container(
        margin:
            EdgeInsets.only(left: 25.0, top: 40.0, right: 40.0, bottom: 0.0),
        width: 80,
        height: 80,
        alignment: Alignment.center,
        child: RaisedButton(
          color: Colors.white,
          onPressed: () {},
          padding: EdgeInsets.fromLTRB(10, 2, 10, 0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Image.asset(
                'assets/images/retire.png',
                alignment: Alignment.center,
                height: 50,
                width: 50,
              ),
              Text(
                'Retire & 401K',
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          textColor: Colors.grey[700],
        ));

    Widget coaching_button = Container(
        margin: EdgeInsets.only(left: 0.0, top: 40.0, right: 40.0, bottom: 0.0),
        width: 80,
        height: 80,
        alignment: Alignment.center,
        child: RaisedButton(
          color: Colors.white,
          onPressed: () {},
          padding: EdgeInsets.fromLTRB(10, 2, 10, 0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Image.asset(
                'assets/images/coaching.png',
                alignment: Alignment.center,
                height: 50,
                width: 50,
              ),
              Text(
                'Credit Card Coaching',
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          textColor: Colors.grey[700],
        ));

    Widget tax_button = Container(
        margin: EdgeInsets.only(left: 0.0, top: 40.0, right: 0.0, bottom: 0.0),
        width: 80,
        height: 80,
        alignment: Alignment.center,
        child: RaisedButton(
          color: Colors.white,
          onPressed: () {},
          padding: EdgeInsets.fromLTRB(10, 2, 10, 0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Image.asset(
                'assets/images/tax.png',
                alignment: Alignment.center,
                height: 50,
                width: 50,
              ),
              Text(
                'Tax 101',
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          textColor: Colors.grey[700],
        ));

    Widget live_budgeting_title = Container(
        margin: EdgeInsets.only(left: 20.0, top: 40.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topLeft,
        child: Text(
          'Live Budgeting Tool',
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey[700],
          ),
          textAlign: TextAlign.left,
        ));

    Widget live_budgeting_line = Container(
      margin: EdgeInsets.only(left: 0.0, top: 40.0, right: 0.0, bottom: 0.0),
      child: Divider(
        indent: 5,
        endIndent: 5,
        color: Color(0xFFDAAA00),
        thickness: 1.5,
      ),
    );

    Widget live_view_details = Container(
        margin: EdgeInsets.only(left: 0.0, top: 40.0, right: 10.0, bottom: 0.0),
        alignment: Alignment.centerRight,
        child: FlatButton(
          textColor: Color(0xFFDAAA00),
         onPressed: () => Router.navigator.pushNamed(Router.liveBudgeting),
          child: Text("View Details", style: TextStyle(fontSize: 15.0)),
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

    Widget gather_title = Container(
        margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topLeft,
        child: Text(
          'Gather Ups',
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

    Widget gather_details = Container(
        margin: EdgeInsets.only(left: 0.0, top: 10.0, right: 10.0, bottom: 0.0),
        alignment: Alignment.centerRight,
        child: FlatButton(
          textColor: Color(0xFFDAAA00),
          onPressed: () => Router.navigator.pushNamed(Router.gatherUps),
          child: Text("View Details", style: TextStyle(fontSize: 15.0)),
        ));

    Widget total_gather = Container(
        margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 0.0, bottom: 0.0),
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
        margin: EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topLeft,
        child: Text(
          '+\$2.30',
          style: TextStyle(
            fontSize: 24,
            color: Color(0xFFDAAA00),
          ),
          textAlign: TextAlign.left,
        ));

    Widget gather_container = Container(
        margin: EdgeInsets.only(left: 0.0, top: 40.0, right: 0.0, bottom: 0.0),
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
                      color: Color(0xFF00249C),
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
                      color: Color(0xFF00249C),
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
                      color: Color(0xFFDAAA00),
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
                      color: Color(0xFF00249C),
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
                      color: Color(0xFFDAAA00),
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
                      color: Color(0xFF00249C),
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
                      color: Color(0xFFDAAA00),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ],
        ));

    Widget promo_ed = Container(
        margin: EdgeInsets.only(left: 20.0, top: 40.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topLeft,
        child: Text(
          'Promoting Financial Education',
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey[700],
          ),
          textAlign: TextAlign.left,
        ));

    Widget promo_line = Container(
      margin: EdgeInsets.only(left: 0.0, top: 40.0, right: 0.0, bottom: 0.0),
      child: Divider(
        indent: 5,
        endIndent: 20,
        color: Color(0xFFDAAA00),
        thickness: 1.5,
      ),
    );

    Widget spread_info = Container(
        margin: EdgeInsets.only(left: 20.0, top: 80.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topLeft,
        child: Text(
          'Spread the WEALTH',
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey[700],
          ),
          textAlign: TextAlign.left,
        ));

    Widget spread_line = Container(
      margin: EdgeInsets.only(left: 0.0, top: 80.0, right: 0.0, bottom: 0.0),
      child: Divider(
        indent: 5,
        endIndent: 20,
        color: Color(0xFFDAAA00),
        thickness: 1.5,
      ),
    );

    Widget if_useful = Container(
        margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topLeft,
        child: Text(
          'Find our app useful! Share it with your friends.',
          style: TextStyle(
            fontSize: 20,
            color: Color(0xFF00249C),
          ),
          textAlign: TextAlign.left,
        ));

    Widget email_button = Container(
        margin: EdgeInsets.only(left: 20.0, top: 40.0, right: 0.0, bottom: 0.0),
        width: 80,
        height: 80,
        alignment: Alignment.center,
        child: FlatButton(
          color: Colors.white,
          onPressed: () {},
          padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Icon(
                Icons.alternate_email,
                color: Color(0xFF00249C),
              ),
              Text(
                'Email',
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          textColor: Colors.grey[700],
        ));

    Widget message_button = Container(
        margin: EdgeInsets.only(left: 0.0, top: 40.0, right: 0.0, bottom: 0.0),
        width: 80,
        height: 80,
        alignment: Alignment.center,
        child: FlatButton(
          color: Colors.white,
          onPressed: () {},
          padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Icon(
                Icons.mail,
                color: Color(0xFF00249C),
              ),
              Text(
                'Message',
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          textColor: Colors.grey[700],
        ));

    Widget facebook_button = Container(
        margin: EdgeInsets.only(left: 0.0, top: 40.0, right: 0.0, bottom: 0.0),
        width: 80,
        height: 80,
        alignment: Alignment.center,
        child: FlatButton(
          color: Colors.white,
          onPressed: () {},
          padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Container(
                child: Image.asset(
                  "assets/images/facebook.png",
                  alignment: Alignment.center,
                  height: 25,
                  width: 25,
                ),
              ),
              Text(
                'Facebook',
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          textColor: Colors.grey[700],
        ));

    Widget others_button = Container(
        margin: EdgeInsets.only(left: 0.0, top: 40.0, right: 0.0, bottom: 0.0),
        width: 80,
        height: 80,
        alignment: Alignment.center,
        child: FlatButton(
          color: Colors.white,
          onPressed: () {},
          padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Icon(
                Icons.share,
                color: Color(0xFF00249C),
              ),
              Text(
                'Others',
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          textColor: Colors.grey[700],
        ));

    Widget feedback = Container(
        margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topCenter,
        child: Text(
          'Provide us Feedback',
          style: TextStyle(
            fontSize: 20,
            color: Color(0xFF00249C),
            fontWeight: FontWeight.w900,
          ),
          textAlign: TextAlign.left,
        ));

    Widget improve_button = Container(
        width: 300,
        margin: EdgeInsets.all(40.0),
        decoration: BoxDecoration(
            color: Colors.grey[800], borderRadius: BorderRadius.circular(10)),
        child: FlatButton(
          textColor: Colors.white,
          onPressed: () {},
          child: Text(
            "FYI FLI can improve by..",
            style: TextStyle(fontSize: 20.0),
          ),
        ));

    Widget sub_container = Container(
      margin: EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
      height: 2140,
      //alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),

      child: Column(
        children: [
          Row(children: [learn, Expanded(child: learn_line)]),
          Row(children: [student_debt_button, credit_button, insurance_button]),
          Row(children: [retirement_button, coaching_button, tax_button]),
          Row(children: [
            live_budgeting_title,
            Expanded(child: live_budgeting_line),
            live_view_details
          ]),
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
          Row(children: [
            gather_title,
            Expanded(child: gather_line),
            gather_details
          ]),
          Row(
            children: [total_gather, gather_result],
          ),
          gather_container,
          Row(children: [promo_ed, Expanded(child: promo_line)]),
          Container(
              height: 400,
              margin:
                  EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
              child: NavDots()),
          Container(
              width: 200,
              margin:
                  EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
              child: Ebook_button),
          Row(children: [spread_info, Expanded(child: spread_line)]),
          if_useful,
          Row(children: [
            email_button,
            message_button,
            facebook_button,
            others_button
          ]),
          feedback,
          improve_button
        ],
      ),
    );

    return BaseWidget(builder: (context, sizingInformation)
    {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fyi Fli',
        theme: ThemeData(fontFamily: 'Gilroy'),
        home: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Color(0xFF00249C),
          body: Container(
            child: Stack(children: <Widget>[
              Row(
                children: [welcome, welcome_image],
              ),
              Container(
                child: SingleChildScrollView(
                  child: Container(
                      margin: EdgeInsets.only(top: 200),
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
                  children: [fyi, top_left_icon, fli, bell_icon],
                ),
                decoration: BoxDecoration(color: Color(0xFF00249C)),
              ),
            ]),
          ),
        ),
      );
    });
  }
}
