import 'dart:io';

import 'package:FyiFli/app_screens/ui/base_widget.dart';
import 'package:FyiFli/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:FyiFli/main.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class Signup4 extends StatefulWidget {
  @override
  _Signup4State createState() => _Signup4State();
}

class _Signup4State extends State<Signup4> {
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
               onPressed: () => Router.navigator.pushNamed(Router.signup_3),
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
          'Please introduce yourself...',
          style: TextStyle(
              fontSize: 20,
              color: Colors.grey[800],
              fontWeight: FontWeight.w700),
          textAlign: TextAlign.left,
        ));

    Widget name_field = Container(
        margin: EdgeInsets.only(
            left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
        child: TextField(
          keyboardType: TextInputType.text,
          cursorColor: Color(0xFF00249C),
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF00249C)),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF00249C)),
            ),
            labelText: 'Name',
            labelStyle: TextStyle(height: 0.5, color: Color(0xFF00249C)),
          ),
          style: TextStyle(height: 2.0, color: Color(0xFF00249C)),
        ),
      );

    Widget email_field = Container(
      margin: EdgeInsets.only(
          left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        cursorColor: Color(0xFF00249C),
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF00249C)),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF00249C)),
          ),
          labelText: 'Email Address',
          labelStyle: TextStyle(height: 0.5, color: Color(0xFF00249C)),
        ),
        style: TextStyle(height: 2.0, color: Color(0xFF00249C)),
      ),
    );

    Widget user_field = Container(
      margin: EdgeInsets.only(
          left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
      child: TextField(
        keyboardType: TextInputType.text,
        cursorColor: Color(0xFF00249C),
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF00249C)),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF00249C)),
          ),
          labelText: 'Username',
          labelStyle: TextStyle(height: 0.5, color: Color(0xFF00249C)),
        ),
        style: TextStyle(height: 2.0, color: Color(0xFF00249C)),
      ),
    );

    Widget password_field = Container(
      margin: EdgeInsets.only(
          left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
      child: TextField(
        keyboardType: TextInputType.visiblePassword,
        cursorColor: Color(0xFF00249C),
        obscureText: true,
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF00249C)),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF00249C)),
          ),
          labelText: 'Password',
          labelStyle: TextStyle(height: 0.5, color: Color(0xFF00249C)),
        ),
        style: TextStyle(height: 2.0, color: Color(0xFF00249C)),
      ),
    );

    Widget phone_field = Container(
      margin: EdgeInsets.only(
          left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
      child: TextField(
        keyboardType: TextInputType.phone,
        cursorColor: Color(0xFF00249C),
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF00249C)),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF00249C)),
          ),
          labelText: 'Phonenumber',
          labelStyle: TextStyle(height: 0.5, color: Color(0xFF00249C)),
        ),
        style: TextStyle(height: 2.0, color: Color(0xFF00249C)),
      ),
    );

    Widget signup_button = Container(
        margin:
        EdgeInsets.only(left: 30.0, top: 40.0, right: 30.0, bottom: 0.0),
        width: 800,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.grey[800], borderRadius: BorderRadius.circular(10)),
        child: FlatButton(
          textColor: Colors.white,
          onPressed: () => Router.navigator.pushNamed(Router.dashboard),
          child: Text(
            "Continue",
            style: TextStyle(fontSize: 20.0),
          ),
        ));

    final leftSection = Container(
      margin: EdgeInsets.only(left: 110.0, top: 20.0, right: 0.0, bottom: 0.0),
      alignment: Alignment.bottomLeft,
      child: Text(
        "Skip  & ",
        textAlign: TextAlign.right,
        style: TextStyle(fontSize: 20, color: Colors.grey[800], fontWeight: FontWeight.w900),
      ),
    );

    final rightSection = Container(
        margin: EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.bottomRight,
        child: FlatButton(
          textColor: Color(0xFFDAAA00),
         onPressed: () => Router.navigator.pushNamed(Router.congratulations),
          child: Text("Sign Up",
              textAlign: TextAlign.left, style: TextStyle(fontSize: 20)),
        ));


    final leftSection2 = Container(
      margin: EdgeInsets.only(left: 30.0, top: 10.0, right: 0.0, bottom: 30.0),
      alignment: Alignment.bottomLeft,
      child: Text(
        "Already have an account?",
        textAlign: TextAlign.right,
        style: TextStyle(fontSize: 20, color: Colors.grey[800], fontWeight: FontWeight.w900),
      ),
    );

    final rightSection2 = Container(
        margin: EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 30.0),
        alignment: Alignment.bottomRight,
        child: FlatButton(
          textColor: Color(0xFFDAAA00),
          onPressed: () => Router.navigator.pushNamed(Router.loginScreen),
          child: Text("Login here.",
              textAlign: TextAlign.left, style: TextStyle(fontSize: 20)),
        ));

    return BaseWidget(builder: (context, sizingInformation)
    {
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
                          intro,
                          name_field,
                          email_field,
                          user_field,
                          password_field,
                          phone_field,
                          signup_button,
                          Row(
                            children: [leftSection, rightSection],
                          ),
                          Row(
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
