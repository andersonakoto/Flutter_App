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


class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
                    onPressed: () => Router.navigator.pushNamed(Router.dashboard),
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
            ),FlatButton(
              textColor: Colors.grey[700],
              color: Colors.white,
              onPressed: () {},
              child: Text("Change Profile Image", style: TextStyle(fontSize: 20.0)),
            )

          ]
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

    Widget name = Container(
      margin: EdgeInsets.only(
          left: 30.0, top: 10.0, right: 30.0, bottom: 0.0),
      child: TextField(
        keyboardType: TextInputType.text,
        cursorColor: Color(0xFF00249C),
        decoration: InputDecoration(
          labelText: 'Name',
          labelStyle: TextStyle(height: 0.5),
        ),
        style: TextStyle(height: 2.0, color: Color(0xFF00249C)),
      ),
    );

    Widget describe_yourself = Container(
      margin: EdgeInsets.only(
          left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
      child: TextField(
        keyboardType: TextInputType.text,
        cursorColor: Color(0xFF00249C),
        decoration: InputDecoration(
          labelText: 'Describe Yourself',
          labelStyle: TextStyle(height: 0.5),
        ),
        style: TextStyle(height: 2.0, color:Color(0xFF00249C)),
      ),
    );

    Widget college_name = Container(
      margin: EdgeInsets.only(
          left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
      child: TextField(
        keyboardType: TextInputType.text,
        cursorColor: Color(0xFF00249C),
        decoration: InputDecoration(
          labelText: 'College Name',
          labelStyle: TextStyle(height: 0.5),
        ),
        style: TextStyle(height: 2.0, color: Color(0xFF00249C)),
      ),
    );

    Widget college_location = Container(
      margin: EdgeInsets.only(
          left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
      child: TextField(
        keyboardType: TextInputType.text,
        cursorColor: Color(0xFF00249C),
        decoration: InputDecoration(
          labelText: 'College Location',
          labelStyle: TextStyle(height: 0.5),
        ),
        style: TextStyle(height: 2.0, color: Color(0xFF00249C)),
      ),
    );

    Widget graduation_year = Container(
      margin: EdgeInsets.only(
          left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
      child: TextField(
        keyboardType: TextInputType.text,
        cursorColor: Color(0xFF00249C),
        decoration: InputDecoration(
          labelText: 'Graduation Year',
          labelStyle: TextStyle(height: 0.5),
        ),
        style: TextStyle(height: 2.0, color: Color(0xFF00249C)),
      ),
    );

    Widget field_of_study = Container(
      margin: EdgeInsets.only(
          left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
      child: TextField(
        keyboardType: TextInputType.text,
        cursorColor: Color(0xFF00249C),
        decoration: InputDecoration(
          labelText: 'Field of Study',
          labelStyle: TextStyle(height: 0.5),
        ),
        style: TextStyle(height: 2.0, color:Color(0xFF00249C)),
      ),
    );

    Widget work_experience = Container(
      margin: EdgeInsets.only(
          left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
      child: TextField(
        keyboardType: TextInputType.text,
        cursorColor: Color(0xFF00249C),
        decoration: InputDecoration(
          labelText: 'Work Experience',
          labelStyle: TextStyle(height: 0.5),
        ),
        style: TextStyle(height: 2.0, color: Color(0xFF00249C)),
      ),
    );

    Widget employed_at = Container(
      margin: EdgeInsets.only(
          left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
      child: TextField(
        keyboardType: TextInputType.text,
        cursorColor: Color(0xFF00249C),
        decoration: InputDecoration(
          labelText: 'Employed at',
          labelStyle: TextStyle(height: 0.5),
        ),
        style: TextStyle(height: 2.0, color: Color(0xFF00249C)),
      ),
    );

    Widget facebook_profile_link = Container(
      margin: EdgeInsets.only(
          left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
      child: TextField(
        keyboardType: TextInputType.text,
        cursorColor: Color(0xFF00249C),
        decoration: InputDecoration(
          labelText: 'Facebook Profile Link',
          labelStyle: TextStyle(height: 0.5),
        ),
        style: TextStyle(height: 2.0, color: Color(0xFF00249C)),
      ),
    );

    Widget linkedin_profile_link = Container(
      margin: EdgeInsets.only(
          left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
      child: TextField(
        keyboardType: TextInputType.text,
        cursorColor: Color(0xFF00249C),
        decoration: InputDecoration(
          labelText: 'Linkedin Profile Link',
          labelStyle: TextStyle(height: 0.5),
        ),
        style: TextStyle(height: 2.0, color:Color(0xFF00249C)),
      ),
    );
    Widget twitter_profile_link = Container(
      margin: EdgeInsets.only(
          left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
      child: TextField(
        keyboardType: TextInputType.text,
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          labelText: 'Twitter Profile Link',
          labelStyle: TextStyle(height: 0.5),
        ),
        style: TextStyle(height: 2.0, color: Color(0xFF00249C)),
      ),
    );
    Widget instagtam_profile_link = Container(
      margin: EdgeInsets.only(
          left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
      child: TextField(
        keyboardType: TextInputType.text,
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          labelText: 'Instagram Profile Link',
          labelStyle: TextStyle(height: 0.5),
        ),
        style: TextStyle(height: 2.0, color: Color(0xFF00249C)),
      ),
    );

    Widget update_profile = Container(
        margin:
        EdgeInsets.only(left: 30.0, top: 60.0, right: 30.0, bottom: 40.0),
        width: 800,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.grey[800], borderRadius: BorderRadius.circular(10)),
        child: FlatButton(
          textColor: Colors.white,
          onPressed: () {},
          child: Text(
            "Update Profile",
            style: TextStyle(fontSize: 20.0),
          ),
        ));


    Widget sub_container = Container(
        height: 980,
        decoration: BoxDecoration(
            color: Colors.white),
        child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      name,
                      describe_yourself,
                      college_name,
                      college_location,
                      graduation_year,
                      field_of_study,
                      work_experience,
                      employed_at,
                      facebook_profile_link,
                      linkedin_profile_link,
                      twitter_profile_link,
                      instagtam_profile_link,
                      update_profile

                    ],))
            ]));

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
  }
}
