import 'package:flutter/material.dart';

import 'package:FyiFli/routes/router.gr.dart';

class HighSchool extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fyi Fli',
      theme: ThemeData(fontFamily: 'Gilroy'),
    home: Scaffold(
      body:Container(
    margin:
    EdgeInsets.only(left: 30.0, top: 260.0, right: 30.0, bottom: 0.0),
        alignment: Alignment.center,
        height: 180,
        width: 300,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 1.0, // soften the shadow
            spreadRadius: 0.2, //extend the shadow
          )
        ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(children: [
          Container(
            margin:
            EdgeInsets.only(left: 10.0, top: 20.0, right: 10.0, bottom: 0.0),
            child: Column(
              children: [
                Text(
                  'High School Students',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.grey[700],
                      fontWeight: FontWeight.w900),
                  textAlign: TextAlign.left,
                ),
                Text(
                  'Financial literacy teaches students the basics of money management: Budgeting, Saving, Debt, Investing, and Giving. That knowledge is critical for students to build strong money habits early on and avoid many of the mistakes that lead to lifelong money struggles.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          )]))));
  }
}