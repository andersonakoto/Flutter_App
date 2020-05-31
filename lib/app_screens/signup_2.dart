import 'dart:io';

import 'package:FyiFli/app_screens/ui/base_widget.dart';
import 'package:FyiFli/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:FyiFli/main.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

import 'custom_tile.dart';


class Signup2 extends StatefulWidget {
  @override
  _Signup2State createState() => _Signup2State();
}


class _Signup2State extends State<Signup2> {

  int _counter = 0;
  bool checkBoxValue = false;
  int group = 1;

  bool isExpanded1, isExpanded2, isExpanded3;

  @override
  void initState() {
    this.isExpanded1 = false;
    this.isExpanded2 = false;
    this.isExpanded3 = false;
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
    ));



    Widget college_name = TextField(
      keyboardType: TextInputType.text,
      cursorColor: Color(0xFF00249C),
      decoration: InputDecoration(
        labelText: 'College Name',
        labelStyle: TextStyle(height: 0.5),
      ),
      style: TextStyle(height: 2.0, color: Color(0xFF00249C)),
    );
    Widget college_location =TextField(
      keyboardType: TextInputType.text,
      cursorColor: Color(0xFF00249C),
      decoration: InputDecoration(
        labelText: 'Location',
        labelStyle: TextStyle(height: 0.5),
      ),
      style: TextStyle(height: 2.0, color: Color(0xFF00249C)),
    );


    Widget plan_head = Container(

        child: Row (
          children: [

            Radio(
                value: 0,
                groupValue: group,
                onChanged:(T){
                  setState(() {
                    group = T;
                  });
                }
            ),
            Text(
              'What College Do You Plan On\nAttending?',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w900
              ),
              textAlign: TextAlign.left,
            ),
            IconButton(
              icon: Icon(Icons.info_outline),
              onPressed: () => Router.navigator.pushNamed(Router.highSchool),
            ),
          ],
        )
    );
    Widget plan_expand = Container(
        margin: EdgeInsets.only(left: 20.0, top: 0.0, right: 20.0, bottom: 40.0),
        child: Column (
          children: [
            college_name, college_location
          ],
        )
    );
    Widget plan = Card(
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
              => plan_head, body: plan_expand,
              isExpanded: this.isExpanded1,
            ),
          ],
        )
    );

    Widget current_head = Container(

        child: Row (
          children: [
            Radio(
                value: 1,
                groupValue: group,
                onChanged:(T){
                  setState(() {
                    group = T;
                  });
                }
            ),
            Text(
              'What college do you currently\nattend?',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w900
              ),
              textAlign: TextAlign.left,
            ),
            IconButton(
              icon: Icon(Icons.info_outline),
            onPressed: () => Router.navigator.pushNamed(Router.collegeStudents),
            ),

          ],
        )
    );
    Widget current_expand = Container(
        margin: EdgeInsets.only(left: 20.0, top: 0.0, right: 20.0, bottom: 40.0),
        child: Column (
          children: [
            college_name, college_location
          ],
        )
    );
    Widget current = Card(
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
              => current_head, body: current_expand,
              isExpanded: this.isExpanded2,
            ),
          ],
        )
    );

    Widget past_head = Container(
        child: Row (
          children: [
            Radio(
                value: 2,
                groupValue: group,
                onChanged:(T){
                  setState(() {
                    group = T;
                  });
                }
            ),
            Text(
              'What college did you attend?',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w900
              ),
              textAlign: TextAlign.left,
            ),
            IconButton(
              icon: Icon(Icons.info_outline),
             onPressed: () => Router.navigator.pushNamed(Router.graduates),
            ),

          ],
        )
    );
    Widget past_expand = Container(
        margin: EdgeInsets.only(left: 20.0, top: 0.0, right: 20.0, bottom: 40.0),
        child: Column (
          children: [
            college_name, college_location
          ],
        )
    );
    Widget past = Card(
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
              => past_head, body: past_expand,
              isExpanded: this.isExpanded3,
            ),
          ],
        )
    );

    Widget do_not_plan = Container(
        margin: EdgeInsets.only(left: 5.0, top: 5.0, right: 5.0, bottom: 0.0),
//        alignment: Alignment.center,
//        height: 55,
//        width: 330,
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
                  left: 0.0, top: 5.0, right: 0.0, bottom: 0.0),
              child: Row(
                children: [
                  Radio(
                      value: 3,
                      groupValue: group,
                      onChanged:(T){
                        setState(() {
                          group = T;
                        });
                      }
                  ),
                  Text(
                    'Do Not Plan On Attending College',
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey[700], fontWeight: FontWeight.w900
                    ),
                    textAlign: TextAlign.left,
                  ),

                ],
              ),
            ),
          ],
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
                onPressed: ()=> Router.navigator.pushNamed(Router.loginScreen),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: 100.0, top: 0.0, right: 0.0, bottom: 0.0),
              child: Text(
                'Sign Up',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[800],
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ));

    Widget intro = Container(
        margin: EdgeInsets.only(left: 30.0, top: 10.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topLeft,
        child: Text(
          'Please select what best describes\nyou',
          style: TextStyle(
              fontSize: 20,
              color: Colors.grey[800],
              fontWeight: FontWeight.w700),
          textAlign: TextAlign.left,
        ));

    Widget signup_button = Container(
        margin:
        EdgeInsets.only(left: 30.0, top: 40.0, right: 30.0, bottom: 0.0),
        width: 800,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.grey[800], borderRadius: BorderRadius.circular(10)),
        child: FlatButton(
          textColor: Colors.white,
          onPressed: ()=> Router.navigator.pushNamed(Router.signup_3),
          child: Text(
            "Continue",
            style: TextStyle(fontSize: 20.0),
          ),
        ));

    Widget leftSection2 = Container(
      margin: EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0, bottom: 0.0),
//      alignment: Alignment.bottomLeft,
      child: Text(
        "Already have an account?",
        textAlign: TextAlign.right,
        style: TextStyle(fontSize: 20, color: Colors.grey[800], fontWeight: FontWeight.w900),
      ),
    );

    Widget rightSection2 = Container(
//        margin: EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 30.0),
//        alignment: Alignment.bottomRight,
        child: FlatButton(
          textColor: Color(0xFFDAAA00),
          onPressed: ()=> Router.navigator.pushNamed(Router.loginScreen),
          child: Text("Login here.",
              textAlign: TextAlign.left, style: TextStyle(fontSize: 20)),
        ));

    return BaseWidget(builder: (context, sizingInformation)
    {
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
                          intro,
                          Container(
                            margin: EdgeInsets.only(left: 10.0,
                                top: 40.0,
                                right: 10.0,
                                bottom: 30.0),

                            child: Column(
                                children: [
                                  plan,
                                  current,
                                  past,
                                  do_not_plan
                                ]
                            ),
                          ),
                          signup_button,
                          Column(
                            children: [leftSection2, rightSection2],
                          )
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
    });

  }
}



