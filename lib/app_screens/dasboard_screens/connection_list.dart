import 'dart:io';

import 'package:FyiFli/app_screens/ui/base_widget.dart';
import 'package:FyiFli/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:FyiFli/main.dart';
import 'package:flutter_awesome_buttons/flutter_awesome_buttons.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

enum menu_items { add_card, add_savings, edit_profile }


class ConnectionList extends StatefulWidget {
  @override
  _ConnectionListState createState() => _ConnectionListState();
}

class _ConnectionListState extends State<ConnectionList> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xFF00249C),
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
    ));

    Widget topPart = Container(
        margin: EdgeInsets.only(left: 0.0, top: 40.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topCenter,
        child: Row(
          children: <Widget>[
            ClipOval(
              child: Material(
                color: Colors.transparent, borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: Container(
                  margin:
                  EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                    onPressed: () => Router.navigator.pushNamed(Router.profile),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: 110.0, top: 0.0, right: 0.0, bottom: 0.0),
              child: Text(
                'Profile',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
                margin: EdgeInsets.only(
                    left: 100.0, top: 0.0, right: 0.0, bottom: 0.0),
                child: PopupMenuButton<menu_items>(
                  icon: Icon(Icons.more_vert, color: Colors.white),
                  onSelected: (menu_items result) { setState(() { }); },
                  itemBuilder: (BuildContext context) => <PopupMenuEntry<menu_items>>[
                    const PopupMenuItem<menu_items>(
                      value: menu_items.add_card,
                      child: Text('Add Credit Card'),
                    ),
                    const PopupMenuItem<menu_items>(
                      value: menu_items.add_savings,
                      child: Text('Add Savings Account'),
                    ),
                    const PopupMenuItem<menu_items>(
                      value: menu_items.edit_profile,
                      child: Text('Edit Profile'),
                    ),
                  ],
                )
            )
          ],
        ));

    Widget profile_main = Container(
      margin: EdgeInsets.only(top: 60),
      width: 360,
      alignment: Alignment.topCenter,
      child: Column(
          children: [
            Image.asset(
              'assets/images/profile_main.png',
              alignment: Alignment.center,
              height: 100,
              width: 100,
            ),
            Text(
              'Young Smith',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
            Text(
              'Buniness Management\nMaryville College',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),

          ]
      ),
    );

    Widget connections_title = Container(
        margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topLeft,
        child: Text(
          'Connections',
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey[700],
          ),
          textAlign: TextAlign.left,
        ));

    Widget connections_line = Container(
      margin: EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
      child: Divider(
        indent: 5,
        endIndent: 5,
        color:Color(0xFFDAAA00),
        thickness: 1.5,
      ),
    );


    Widget top_container = Container(
      margin: EdgeInsets.only(top: 40),
      height: 250,
      decoration: BoxDecoration(
          color: Color(0xFF00249C)),
      child: Column(
        children: [
          profile_main,
        ],
      ),
    );

    Widget sub_container = Container(
        height: 700,
        decoration: BoxDecoration(
            color: Colors.white),
        child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Row(children: [connections_title, Expanded(child: connections_line)]),
                      Container(
                        child: Row(
                          children:[
                            Container( margin: EdgeInsets.only(left: 15, right: 5), child: Row (children: [ Column(children:
                            [
                              Image.asset('assets/images/profile_sub.png',
                                height: 60,
                                width: 60,
                              ),
                              Text(
                                'Glen Max',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF00249C),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ]),]),),
                            Container( margin: EdgeInsets.all(5), child: Row (children: [ Column(children:
                            [
                              Image.asset('assets/images/profile_sub.png',
                                height: 60,
                                width: 60,
                              ),
                              Text(
                                'Glen Max',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF00249C),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ]),]),),
                            Container( margin: EdgeInsets.all(5), child: Row (children: [ Column(children:
                            [
                              Image.asset('assets/images/profile_sub.png',
                                height: 60,
                                width: 60,
                              ),
                              Text(
                                'Glen Max',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF00249C),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ]),]),),
                            Container( margin: EdgeInsets.all(5), child: Row (children: [ Column(children:
                            [
                              Image.asset('assets/images/profile_sub.png',
                                height: 60,
                                width: 60,
                              ),
                              Text(
                                'Glen Max',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF00249C),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ]),]),),
                          ],
                        ),

                      ),
                      Container(
                        child: Row(
                          children:[
                            Container( margin: EdgeInsets.only(left: 15, right: 5), child: Row (children: [ Column(children:
                            [
                              Image.asset('assets/images/profile_sub.png',
                                height: 60,
                                width: 60,
                              ),
                              Text(
                                'Glen Max',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF00249C),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ]),]),),
                            Container( margin: EdgeInsets.all(5), child: Row (children: [ Column(children:
                            [
                              Image.asset('assets/images/profile_sub.png',
                                height: 60,
                                width: 60,
                              ),
                              Text(
                                'Glen Max',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF00249C),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ]),]),),
                            Container( margin: EdgeInsets.all(5), child: Row (children: [ Column(children:
                            [
                              Image.asset('assets/images/profile_sub.png',
                                height: 60,
                                width: 60,
                              ),
                              Text(
                                'Glen Max',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF00249C),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ]),]),),
                            Container( margin: EdgeInsets.all(5), child: Row (children: [ Column(children:
                            [
                              Image.asset('assets/images/profile_sub.png',
                                height: 60,
                                width: 60,
                              ),
                              Text(
                                'Glen Max',
                                style: TextStyle(
                                  fontSize: 20,
                                  color:Color(0xFF00249C),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ]),]),),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children:[
                            Container( margin: EdgeInsets.only(left: 15, right: 5), child: Row (children: [ Column(children:
                            [
                              Image.asset('assets/images/profile_sub.png',
                                height: 60,
                                width: 60,
                              ),
                              Text(
                                'Glen Max',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF00249C),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ]),]),),
                            Container( margin: EdgeInsets.all(5), child: Row (children: [ Column(children:
                            [
                              Image.asset('assets/images/profile_sub.png',
                                height: 60,
                                width: 60,
                              ),
                              Text(
                                'Glen Max',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF00249C),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ]),]),),
                            Container( margin: EdgeInsets.all(5), child: Row (children: [ Column(children:
                            [
                              Image.asset('assets/images/profile_sub.png',
                                height: 60,
                                width: 60,
                              ),
                              Text(
                                'Glen Max',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF00249C),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ]),]),),
                            Container( margin: EdgeInsets.all(5), child: Row (children: [ Column(children:
                            [
                              Image.asset('assets/images/profile_sub.png',
                                height: 60,
                                width: 60,
                              ),
                              Text(
                                'Glen Max',
                                style: TextStyle(
                                  fontSize: 20,
                                  color:Color(0xFF00249C),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ]),]),),
                          ],
                        ),

                      )
            ]))]));

    return BaseWidget(builder: (context, sizingInformation)
    {
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Fyi Fli',
          theme: ThemeData(fontFamily: 'Gilroy'),
          home: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.white,
            body: Container(
              child: Stack(children: <Widget>[
                top_container,
                Container(
                  child: SingleChildScrollView(
                    child: Container(
                        margin: EdgeInsets.only(top: 270),
                        child: Column(
                          children: <Widget>[
                            sub_container,
                          ],
                        )),
                  ),
                ),
                Container(
                  height: 80,
                  child: Row(
                    children: [topPart],
                  ),
                  decoration: BoxDecoration(color: Color(0xFF00249C)),
                ),
              ]),
            ),
          )
      );
    });
  }
}
