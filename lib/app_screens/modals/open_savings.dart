import 'package:flutter/material.dart';


class OpenSavings extends StatelessWidget {
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
                    "We encourage you to open a savings account not for a rainy day but for peace of mind. This will be a savings account that you will NOT TOUCH unless of an emergency that will result in major financial stress. POM fund will be beneficial for you mentally by instilling a feeling of “whatever happens, I know I’m good” which in turn creates peace of mind.",
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