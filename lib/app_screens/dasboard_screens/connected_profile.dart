import 'dart:io';

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

class ConnectedProfile extends StatefulWidget {
  @override
  _ConnectedProfileState createState() => _ConnectedProfileState();
}

class _ConnectedProfileState extends State<ConnectedProfile> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blue[900],
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
                color: Colors.transparent,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: Container(
                  margin: EdgeInsets.only(
                      left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
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
                  onSelected: (menu_items result) {
                    setState(() {});
                  },
                  itemBuilder: (BuildContext context) =>
                      <PopupMenuEntry<menu_items>>[
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
                ))
          ],
        ));

    Widget profile_main = Container(
      margin: EdgeInsets.only(top: 60, left: 12),
      width: 360,
      alignment: Alignment.topCenter,
      child: Row(children: [
        Column( children:[
          Text(
            'Location',
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          Text(
            'United States',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ]),
        Column( children:[
        Image.asset(
          'assets/images/profile_main.png',
          alignment: Alignment.center,
          height: 100,
          width: 100,
        ),
        Text(
          'Young Smith',
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ),
        Text(
          'Business Management\nMaryville College',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ]),
        Column( children:[

          Text(
            'Works At',
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          Text(
            'Google',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ]),

      ]));


    Widget about_title = Container(
        margin: EdgeInsets.only(left: 20.0, top: 20.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topLeft,
        child: Text(
          'About',
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey[700],
          ),
          textAlign: TextAlign.left,
        ));

    Widget about_line = Container(
      margin: EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0, bottom: 0.0),
      child: Divider(
        indent: 5,
        endIndent: 5,
        color: Color(0xFFDAAA00),
        thickness: 1.5,
      ),
    );

    Widget info_container = Container(
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
                EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0, bottom: 0.0),
            child: Column(
              children: [
                Text(
                  '100',
                  style: TextStyle(
                      fontSize: 46,
                      color: Colors.grey[700],
                      fontWeight: FontWeight.w900),
                  textAlign: TextAlign.left,
                ),
                Text(
                  'Connections',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[700],
                  ),
                  textAlign: TextAlign.left,
                ),
                Container(
                  margin: EdgeInsets.only(left: 50),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Image.asset('assets/images/twitter.png'),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Image.asset('assets/images/facebook_yellow.png'),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Image.asset('assets/images/instagram.png'),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Image.asset('assets/images/in.png'),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ]));

    Widget top_container = Container(
      margin: EdgeInsets.only(top: 40),
      height: 250,
      decoration: BoxDecoration(color: Color(0xFF00249C)),
      child: Column(
        children: [
          profile_main,
        ],
      ),
    );

    Widget sub_container = Container(
        height: 350,
        decoration: BoxDecoration(color: Colors.white),
        child: Column(children: [
          Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Row(children: [about_title, Expanded(child: about_line)]),
                ],
              )),
          Container(
              margin: EdgeInsets.all(20),
              child: Column(children: [
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[700],
                  ),
                  textAlign: TextAlign.left,
                )
              ])),
          Container(
              margin: EdgeInsets.only(
                  left: 30.0, top: 60.0, right: 30.0, bottom: 40.0),
              width: 150,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(10)),
              child: FlatButton(
                textColor: Colors.white,
                onPressed: () {},
                child: Text(
                  "Block",
                  style: TextStyle(fontSize: 20.0),
                ),
              ))
        ]));

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fyi Fli',
        theme: ThemeData(fontFamily: 'Gilroy'),
        home: Scaffold(
          endDrawer: Drawer(
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.only(top: 80),
              children: <Widget>[
                ListTile(
                  title: Text('Live Budgeting Tool', textAlign: TextAlign.right, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Goals', textAlign: TextAlign.right, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Gather Ups', textAlign: TextAlign.right, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Peace of Mind', textAlign: TextAlign.right, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Debt Eliminator', textAlign: TextAlign.right, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Reports', textAlign: TextAlign.right, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Add Credit Card', textAlign: TextAlign.right, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Add Savings Account', textAlign: TextAlign.right, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('FYI FLI can improve by...', textAlign: TextAlign.right, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Logout', textAlign: TextAlign.right, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          body: Container(
            child: Stack(children: <Widget>[
              top_container,
              info_container,
              Container(
                child: SingleChildScrollView(
                  child: Container(
                      margin: EdgeInsets.only(top: 470),
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
        ));
  }
}
