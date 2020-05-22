import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:FyiFli/main.dart';


class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
    )
    );

    Widget topPart = Container(
        margin: EdgeInsets.only(left: 0.0, top: 40.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topCenter,
        child: Row(
          children: <Widget>[

            Container(
              margin: EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),

               child: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.blue,
              onPressed: () {},
              ),
            ),
        Container(
        margin: EdgeInsets.only(left: 100.0, top: 0.0, right: 0.0, bottom: 0.0),

            child: Text(
              'Sign Up',
              style: TextStyle(fontSize: 20, color: Colors.grey[800], fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
              ),
            ),
          ],
        )
    );

   Widget rankText = Container(
   margin: EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
   alignment: Alignment.topCenter,
     child: Text(
         'Rank Your Knowledge On These\nFinancial Literacy/Literary Terms\nBelow:',
         style: TextStyle(fontSize: 20, color: Colors.grey[800], fontWeight: FontWeight.w700),
         textAlign: TextAlign.left,
       )
    );


   Widget checkTitles = Container(
       margin: EdgeInsets.only(left: 0.0, top: 40.0, right: 0.0, bottom: 0.0),
       alignment: Alignment.topCenter,
       child: Row(
         children: <Widget>[

           Container(
             margin: EdgeInsets.only(left: 130.0, top: 0.0, right: 0.0, bottom: 0.0),
             child: Text(
               'Unfamiliar',
               style: TextStyle(fontSize: 15, color: Colors.yellow[800], fontWeight: FontWeight.w700),
               textAlign: TextAlign.center,
             ),
           ),
           Container(
             margin: EdgeInsets.only(left: 25.0, top: 0.0, right: 0.0, bottom: 0.0),
             child: Text(
               'Familiar',
               style: TextStyle(fontSize: 15, color: Colors.yellow[800], fontWeight: FontWeight.w700),
               textAlign: TextAlign.center,
             ),
           ),
           Container(
             margin: EdgeInsets.only(left: 25.0, top: 0.0, right: 0.0, bottom: 0.0),

             child: Text(
               'Expert',
               style: TextStyle(fontSize: 15, color: Colors.yellow[800], fontWeight: FontWeight.w700),
               textAlign: TextAlign.center,
             ),
           ),
         ],
       )

   );




    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            topPart,
            rankText,
            checkTitles
          ],
        ),

      ),
    );
  }
}