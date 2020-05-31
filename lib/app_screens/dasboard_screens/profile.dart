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


class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                    onPressed: () => Router.navigator.pushNamed(Router.loginScreen),
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
              onSelected: (menu_items result) { setState(() {
                Router.navigator.pushNamed(Router.signup_5);
                Router.navigator.pushNamed(Router.addBankAccount);
                Router.navigator.pushNamed(Router.editProfile);
              }); },
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
            'Business Management\nMaryville College',
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
        color: Color(0xFFDAAA00),
        thickness: 1.5,
      ),
    );


    Widget connections_new = Container(
        margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topLeft,
        child: Text(
          'You Have 2 new ',
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey[700],
          ),
          textAlign: TextAlign.left,
        ));

    Widget connection_requests = Container(
        margin: EdgeInsets.only(top: 10),
        child: FlatButton(
          textColor: Colors.blue[900],
          onPressed: () => Router.navigator.pushNamed(Router.connectionRequests),
          child: Text("Connection Requests.", style: TextStyle(fontSize: 20.0, decoration: TextDecoration.underline)),
        ));

    Widget recommend_title = Container(
        margin: EdgeInsets.only(left: 20.0, top: 20.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topLeft,
        child: Text(
          'Recommended Jobs',
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey[700],
          ),
          textAlign: TextAlign.left,
        ));

    Widget recommend_line = Container(
      margin: EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0, bottom: 0.0),
      child: Divider(
        indent: 5,
        endIndent: 5,
        color:Color(0xFFDAAA00),
        thickness: 1.5,
      ),
    );


    Widget info_container = Container(
        margin: EdgeInsets.only(left: 30.0, top: 260.0, right: 30.0, bottom: 10.0),
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        height: 200,
        width: 300,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 1.0, // soften the shadow
            spreadRadius: 0.2, //extend the shadow
          )
        ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
                children: [
                  Text(
                    '100',
                    style: TextStyle(
                      fontSize: 46,
                      color: Colors.grey[700], fontWeight: FontWeight.w900
                    ),
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
                     alignment: Alignment.center,
                     child: FlatButton(
                     textColor: Color(0xFF00249C),
                       onPressed: () => Router.navigator.pushNamed(Router.peopleYouMayKnow),
                       child: Text("People You May Know", style: TextStyle(fontSize: 20.0, decoration: TextDecoration.underline, fontWeight: FontWeight.w900)),
                    )),
              Container(
                margin: EdgeInsets.only(left: 40),
                child: Row(
               children:[
                 IconButton(
                icon: Image.asset('assets/images/twitter.png'),
                onPressed: () {},
              ),
                 IconButton(
                   icon: Image.asset('assets/images/facebook_yellow.png'),
                   onPressed: () {},
                 ),IconButton(
                   icon: Image.asset('assets/images/instagram.png'),
                   onPressed: () {},
                 ),IconButton(
                   icon: Image.asset('assets/images/in.png'),
                   onPressed: () {},
                 ),

                ],
              ),
            ),
          ],
              ),
        );

    Widget job_container = Container(
        margin: EdgeInsets.only(left: 20.0, top: 40.0, right: 20.0, bottom: 0.0),
        alignment: Alignment.center,
        height: 130,
        width: 360,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 1.0, // soften the shadow
            spreadRadius: 0.2, //extend the shadow
          )
        ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: 10.0, top: 10.0, right: 10.0, bottom: 0.0),
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    Container(
                    child: Text(
                      'Job Title',
                      style: TextStyle(
                          fontSize: 26,
                          color: Colors.grey[700], fontWeight: FontWeight.w900),
                    ),),
                    Container(
                      margin: EdgeInsets.only(
                          left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
                        alignment: Alignment.centerLeft,
                        child: Text("People make the wrong financial decisions losing money saved for years.", style: TextStyle(fontSize: 20.0,)),
                        ),
                        ],
                      ),
                    ),
                  ],
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
                  Container( margin: EdgeInsets.only(left: 20, right: 5), child: Row (children: [ Column(children:
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
                  Container(margin: EdgeInsets.all(5), child: Column(children:[
                    Container(
                      margin: EdgeInsets.all(5),
                      width: 54.0,
                      height: 54.0,
                      child: RaisedButton(
                        color: Color(0xFF00249C),
                        onPressed: () {},
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.add, color: Colors.white, size: 20,),
                            Text('97', style: TextStyle(color: Colors.white,fontSize: 22),),
                          ],
                        ),
                      ),
                    ),
                    Text('View All', style: TextStyle(color: Color(0xFF00249C),fontSize: 18),),
                  ],
              ),
              ),],),),

              Row(children: [connections_new, connection_requests]),
              Row(children: [recommend_title, Expanded(child:recommend_line)]),

              job_container,
              job_container


            ],))
    ]));

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
                        margin: EdgeInsets.only(top: 10),
                        child: Column(
                          children: <Widget>[
                            info_container,
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
