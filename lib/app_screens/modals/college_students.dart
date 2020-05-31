import 'package:FyiFli/app_screens/ui/base_widget.dart';
import 'package:flutter/material.dart';

import 'package:FyiFli/routes/router.gr.dart';

class CollegeStudents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseWidget(builder: (context, sizingInformation) {
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Fyi Fli',
          theme: ThemeData(fontFamily: 'Gilroy'),
          home: Scaffold(
              body: Container(
                  margin:
                  EdgeInsets.only(
                      left: 30.0, top: 260.0, right: 30.0, bottom: 0.0),
                  alignment: Alignment.center,
                  height: 180,
                  width: 340,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 1.0, // soften the shadow
                      spreadRadius: 0.2, //extend the shadow
                    )
                  ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(children: [
                    Container(
                      margin:
                      EdgeInsets.only(
                          left: 10.0, top: 10.0, right: 10.0, bottom: 10.0),
                      child: Column(
                        children: [
                          Container(
                              alignment: Alignment.center,
                              child: Row(
                                  children: [
                                    Text(
                                      'College Students',
                                      style: TextStyle(
                                          fontSize: 22,
                                          color: Colors.grey[700],
                                          fontWeight: FontWeight.w900),
                                      textAlign: TextAlign.left,
                                    ),
                                    Container(
                                      margin:
                                      EdgeInsets.only(
                                          left: 78.0, top: 0.0, right: 0.0, bottom: 0.0),
                                      child: IconButton(
                                        icon: Icon(Icons.close),
                                        color: Color(0xFF00249C),
                                        onPressed: ()=> Router.navigator.pushNamed(Router.signup_2),
                                      ),
                                    )
                                  ])),
                          Text(
                            'Your future success relies on engaging in opportunities that allow you to learn, develop, and boost core money management skills which is financial literacy at its simplest form',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[700],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    )
                  ]))));
    });
  }
}