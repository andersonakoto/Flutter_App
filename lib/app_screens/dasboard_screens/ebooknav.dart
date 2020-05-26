import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class EbookNav extends StatefulWidget {
  @override
  _EbookNavState createState() => _EbookNavState();
}

class _EbookNavState extends State<EbookNav> {
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
        //backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
        ),
      ),
    );
  }
}

Widget Ebook_1 = Container(
    margin: EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
    child: Row(
      children: <Widget>[
        Container(
          child: Image.asset(
            'assets/images/ebook1.png',
            alignment: Alignment.centerLeft,
            height: 580,
            width: 150,
          ),
        ),
        Container(
            margin:
                EdgeInsets.only(left: 20.0, top: 40.0, right: 0.0, bottom: 0.0),
            alignment: Alignment.topLeft,
            height: 380,
            width: 100,
            child: Text(
              'Why is financial education important? To answer this question you must know, what is financial education?',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[700],
              ),
              textAlign: TextAlign.left,
            )),
      ],
    ));

Widget Ebook_2 = Container();
Widget Ebook_3 = Container();

Widget Ebook_button = Container(
  decoration: BoxDecoration(
      color: Colors.grey[800], borderRadius: BorderRadius.circular(10)),
  child: Row(
    children: [
      Container(
          margin:
          EdgeInsets.only(left: 10.0, top: 0.0, right: 0.0, bottom: 0.0),
          child: Image.asset(
            'assets/images/ebook_btn.png',
            alignment: Alignment.center,
            height: 40,
            width: 40,
          )),
      Container(
          child: FlatButton(
        textColor: Colors.white,
        onPressed: () {},
        child: Text(
          "Read  E-Book",
          style: TextStyle(fontSize: 20.0),
        ),
      )),
    ],
  ),
);

class NavDots extends StatefulWidget {
  @override
  _NavDotsState createState() => _NavDotsState();
}

class _NavDotsState extends State<NavDots> {
  final controller = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 300,
                  child: PageView(
                    controller: controller,
                    children: [
                      Ebook_1,
                      Ebook_2,
                      Ebook_3,
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: WormEffect(
                        dotColor: Colors.grey[400],
                        activeDotColor: Color(0xFFDAAA00)),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
