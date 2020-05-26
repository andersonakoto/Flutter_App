import 'package:flutter/material.dart';

import 'package:FyiFli/routes/router.gr.dart';

class Graduates extends StatelessWidget {
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
                          'College Attendees/Graduates',
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.w900),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          'It is important for college graduates who took out loans to be financially literate! Most college graduates have between \$25,000 - \$50,000 in student loan debts.',
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