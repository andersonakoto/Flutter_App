import 'package:FyiFli/app_screens/ui/base_widget.dart';
import 'package:FyiFli/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseWidget(builder: (context, sizingInformation) {
      return MaterialApp(
          title: 'Fyi Fli',
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
                                  left: 0.0,
                                  top: 40.0,
                                  right: 0.0,
                                  bottom: 0.0),
                              child: Image.asset(
                                'assets/images/login_logo.png',
                                alignment: Alignment.center,
                                height: 100,
                                width: 200,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: 30.0,
                                  top: 0.0,
                                  right: 30.0,
                                  bottom: 0.0),
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
                                  labelText: 'Email',
                                  labelStyle: TextStyle(height: 0.5, color: Color(0xFF00249C)),
                                ),
                                style: TextStyle(
                                    height: 2.0, color: Color(0xFF00249C)),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: 30.0,
                                  top: 0.0,
                                  right: 30.0,
                                  bottom: 5.0),
                              child: TextField(
                                obscureText: true,
                                keyboardType: TextInputType.visiblePassword,
                                cursorColor: Color(0xFF00249C),
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
                                style: TextStyle(
                                    height: 2.0, color: Color(0xFF00249C)),
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
                                  textColor: Color(0xFF00249C),
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
                                  onPressed: () => Router.navigator
                                      .pushNamed(Router.signup_2),
                                  child: Text(
                                    "Log In",
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                )),
                            Container(
                              margin: EdgeInsets.only(
                                  left: 0.0,
                                  top: 20.0,
                                  right: 0.0,
                                  bottom: 30.0),
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
                                  left: 0.0,
                                  top: 20.0,
                                  right: 0.0,
                                  bottom: 30.0),
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
                            Container(
                              margin: EdgeInsets.only(top: 20, bottom: 30),
                              child: Column(
                                children: [
                                  Text(
                                  "Don't have an account?",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.grey[800]),
                                ),
                              FlatButton(
                                  textColor: Color(0xFFDAAA00),
                                  onPressed: () => Router.navigator
                                      .pushNamed(Router.signup_2),
                                  child: Text("Sign up here.",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 20)),
                                ),
                            ]),
                        ),
                      ]),
                      ),
                  ),
              ),
          ),
      );
    });
  }
}
