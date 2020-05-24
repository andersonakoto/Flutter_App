import 'dart:io';

import 'package:FyiFli/app_screens/signup_3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:FyiFli/routes/router.gr.dart';

class Launcher extends StatefulWidget {
  @override
  _LauncherState createState() => _LauncherState();
}

class _LauncherState extends State<Launcher> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Gilroy'),
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
          child: PageViewLauncher(),
        ),
      ),
    );
  }
}

class PageViewLauncher extends StatefulWidget {
  @override
  _PageViewDemoState createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewLauncher> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: [
        Onboarding_1(),
        Onboarding_2(),
        Onboarding_3(),
        LoginScreen()
      ],
    );
  }
}

class Onboarding_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(50.0),
                child: Image.asset(
                  'assets/images/onboarding_1.png',
                  alignment: Alignment.center,
                  height: 300,
                  width: 500,
                ),
              ),
              Container(
                child: Text(
                  'Everything Effortless',
                  style: TextStyle(
                      color: Colors.blue[800],
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.normal,
                      fontSize: 30),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                child: Text(
                  'Mauris quis orci faucibus, egestas nibh sed vestibulum elit. Nam est dui, vestibulum elit',
                  style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ));
  }
}

class Onboarding_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(50.0),
                child: Image.asset(
                  'assets/images/onboarding_2.png',
                  alignment: Alignment.center,
                  height: 300,
                  width: 500,
                ),
              ),
              Container(
                child: Text(
                  'Financial Planning',
                  style: TextStyle(
                      color: Colors.blue[800],
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.normal,
                      fontSize: 30),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                child: Text(
                  'Mauris quis orci faucibus, egestas nibh sed vestibulum elit. Nam est dui, vestibulum elit',
                  style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ));
  }
}

class Onboarding_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(50.0),
                child: Image.asset(
                  'assets/images/onboarding_3.png',
                  alignment: Alignment.center,
                  height: 300,
                  width: 500,
                ),
              ),
              Container(
                child: Text(
                  'Stay In The Green',
                  style: TextStyle(
                      color: Colors.blue[800],
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.normal,
                      fontSize: 30),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                child: Text(
                  'Mauris quis orci faucibus, egestas nibh sed vestibulum elit. Nam est dui, vestibulum elit',
                  style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ));
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Fly Fli',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            resizeToAvoidBottomInset: true, // set it to false
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
                child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      FocusScope.of(context).requestFocus(new FocusNode());
                    },
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                                left: 0.0, top: 40.0, right: 0.0, bottom: 0.0),
                            child: Image.asset(
                              'assets/images/login_logo.png',
                              alignment: Alignment.center,
                              height: 100,
                              width: 200,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
                            child: TextField(
                              keyboardType: TextInputType.emailAddress,
                              cursorColor: Colors.blue,
                              decoration: InputDecoration(
                                labelText: 'Email',
                                labelStyle: TextStyle(height: 0.5),
                              ),
                              style: TextStyle(height: 2.0, color: Colors.blue),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: 30.0, top: 0.0, right: 30.0, bottom: 5.0),
                            child: TextField(
                              obscureText: true,
                              keyboardType: TextInputType.visiblePassword,
                              cursorColor: Colors.blue,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle: TextStyle(height: 0.5),
                              ),
                              style: TextStyle(height: 2.0, color: Colors.blue),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(
                                  left: 0.0,
                                  top: 0.0,
                                  right: 10.0,
                                  bottom: 10.0),
                              alignment: Alignment.centerRight,
                              child: FlatButton(
                                textColor: Colors.blue,
                                onPressed: () {},
                                child: Text("Forgot Password?",
                                    style: TextStyle(fontSize: 15.0)),
                              )),
                          Container(
                              margin: EdgeInsets.only(
                                  left: 30.0,
                                  top: 20.0,
                                  right: 30.0,
                                  bottom: 30.0),
                              width: 800,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.grey[800],
                                  borderRadius: BorderRadius.circular(10)),
                              child: FlatButton(
                                textColor: Colors.white,
                                onPressed: () => OpenSignup(),
                                child: Text(
                                  "Log In",
                                  style: TextStyle(fontSize: 20.0),
                                ),
                              )),
                          Container(
                            margin: EdgeInsets.only(
                                left: 0.0, top: 20.0, right: 0.0, bottom: 30.0),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Divider(
                                    endIndent: 10,
                                    color: Colors.grey,
                                    thickness: 1.5,
                                  ),
                                ),
                                Text(
                                  'or',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.grey[800]),
                                ),
                                Expanded(
                                  child: Divider(
                                    indent: 10,
                                    color: Colors.grey,
                                    thickness: 1.5,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: 0.0, top: 20.0, right: 0.0, bottom: 30.0),
                            child: Text(
                              'Login using',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey[800]),
                            ),
                          ),
                          SignInButton(
                            Buttons.Facebook,
                            onPressed: () {},
                          ),
                          SignInButton(
                            Buttons.Google,
                            onPressed: () {},
                          ),
                          Row(
                            children: [leftSection, rightSection],
                          )
                        ],
                      ),
                    )))));
  }

  void OpenSignup() {
    Router.navigator.pushNamed(Router.signup_3);
  }
}

final leftSection = Container(
  margin: EdgeInsets.only(left: 40.0, top: 30.0, right: 0.0, bottom: 30.0),
  alignment: Alignment.bottomLeft,
  child: Text(
    "Don't have an account?",
    textAlign: TextAlign.right,
    style: TextStyle(fontSize: 20, color: Colors.grey[800]),
  ),
);

final rightSection = Container(
    margin: EdgeInsets.only(left: 0.0, top: 30.0, right: 0.0, bottom: 30.0),
    alignment: Alignment.bottomRight,
    child: FlatButton(
      textColor: Colors.yellow[700],
      onPressed: () {},
      child: Text("Sign up here.",
          textAlign: TextAlign.left, style: TextStyle(fontSize: 20)),
    ));
