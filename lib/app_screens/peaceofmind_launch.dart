import 'dart:io';

import 'package:FyiFli/app_screens/ui/base_widget.dart';
import 'package:FyiFli/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:FyiFli/main.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class Peaceofmind_Launch extends StatefulWidget {
  @override
  _Peaceofmind_LaunchState createState() => _Peaceofmind_LaunchState();
}

class _Peaceofmind_LaunchState extends State<Peaceofmind_Launch> {
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
                color: Color(0xFF00249C),
                onPressed: ()=> Router.navigator.pushNamed(Router.congratulations),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: 80.0, top: 0.0, right: 0.0, bottom: 0.0),
              child: Text(
                'Peace of Mind',
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
            color: Color(0xFFDAAA00), borderRadius: BorderRadius.circular(20)),
        child: FlatButton(
          textColor: Colors.grey[700],
          onPressed: ()=> Router.navigator.pushNamed(Router.savingTools),
          child: Text(
            "Goals",
            style: TextStyle(fontSize: 15.0),
          ),
        ));

    Widget gatherUps = Container(
        margin:
        EdgeInsets.only(left: 5.0, top: 40.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Color(0xFFDAAA00), borderRadius: BorderRadius.circular(20)),
        child: FlatButton(
          textColor: Colors.grey[700],
          onPressed: ()=> Router.navigator.pushNamed(Router.gatherUps),
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
            color: Color(0xFFDAAA00), borderRadius: BorderRadius.circular(20)),
        child: FlatButton(
          textColor: Colors.grey[700],
          onPressed: ()=> Router.navigator.pushNamed(Router.peaceofMind_Main),
          child: Text(
            "Peace Of Mind",
            style: TextStyle(fontSize: 15.0),
          ),
        ));

    Widget peace_of_mind_fund = Container(
        margin: EdgeInsets.only(left: 30.0, top: 40.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.centerLeft,
        child: Text(
          "Peace Of Mind Fund",
          style: TextStyle(
              fontSize: 20,
              color: Color(0xFF00249C),
              fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ));

    Widget open_savings_text = Container(
        margin: EdgeInsets.only(left: 30.0, top: 10.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.centerLeft,
        child: Text(
          "Open savings account at your bank to unlock gather ups and POM fund feature",
          style: TextStyle(
              fontSize: 20,
              color: Colors.grey[800],
              fontWeight: FontWeight.w700),
          textAlign: TextAlign.left,
        ));


    Widget open_savings_button = Container(
        margin:
        EdgeInsets.only(left: 30.0, top: 140.0, right: 30.0, bottom: 0.0),
        width: 800,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.grey[800], borderRadius: BorderRadius.circular(10)),
        child: FlatButton(
          textColor: Colors.white,
          onPressed: () => Router.navigator.pushNamed(Router.addBankAccount),
          child: Text(
            "Open a Savings Account",
            style: TextStyle(fontSize: 20.0),
          ),
        ));

    Widget have_savings_button = Container(
      margin: EdgeInsets.only(left: 30.0, top: 20.0, right: 30.0, bottom: 0.0),
      width: 800,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.grey[800], borderRadius: BorderRadius.circular(10)),
         child: Container(
            margin: EdgeInsets.only(left: 20.0),
            child: FlatButton(
              textColor: Colors.white,
             onPressed: () => Router.navigator.pushNamed(Router.dashboard),
              child: Text(
                "I have a Savings Account",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
      );

    final leftSection = Container(
      margin: EdgeInsets.only(left: 110.0, top: 20.0, right: 0.0, bottom: 30.0),
      alignment: Alignment.bottomLeft,
      child: Text(
        "Skip  &",
        textAlign: TextAlign.right,
        style: TextStyle(
            fontSize: 20, color: Colors.grey[800], fontWeight: FontWeight.w900),
      ),
    );

    final rightSection = Container(
        margin: EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0, bottom: 30.0),
        alignment: Alignment.bottomRight,
        child: FlatButton(
          textColor: Color(0xFFDAAA00),
          onPressed: () => Router.navigator.pushNamed(Router.loginScreen),
          child: Text("Sign Up",
              textAlign: TextAlign.left, style: TextStyle(fontSize: 20)),
        ));

    return BaseWidget(builder: (context, sizingInformation) {
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
                          peaceTitle,
                          Row(
                              children: [goals, gatherUps, peace]
                          ),
                          peace_of_mind_fund,
                          open_savings_text,
                          open_savings_button,
                          have_savings_button,
                          Row(
                            children: [leftSection, rightSection],
                          ),
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
    });
  }

}
