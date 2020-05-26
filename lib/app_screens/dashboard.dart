import 'dart:io';


import 'package:FyiFli/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

import 'dasboard_screens/financial_dictionary.dart';
import 'dasboard_screens/home.dart';
import 'dasboard_screens/profile.dart';



class Dashboard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fyi Fli',
      theme: ThemeData(fontFamily: 'Gilroy'),
      home: DashboardStatefulWidget(),

    );
  }
}



class DashboardStatefulWidget extends StatefulWidget {
  DashboardStatefulWidget({Key key}) : super(key: key);

  @override
  _DashboardStatefulWidgetState createState() => _DashboardStatefulWidgetState();
}

class _DashboardStatefulWidgetState extends State<DashboardStatefulWidget> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>(); // ADD THIS LINE

  int _selectedIndex = 0;
  TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _children =
  [
    Home(),
    Dictionary(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      if(index == 3) {
        _scaffoldKey.currentState.openEndDrawer(); // CHANGE THIS LINE
      }else{
      _selectedIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      endDrawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.only(top: 40),
          children: <Widget>[
            ListTile(
              title: Text('Live Budgeting Tool', textAlign: TextAlign.right, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
              onTap: () {
                Router.navigator.pushNamed(Router.liveBudgeting);
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Goals', textAlign: TextAlign.right, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),),
              onTap: () {
                Router.navigator.pushNamed(Router.savingTools);

                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Gather Ups', textAlign: TextAlign.right, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),),
              onTap: () {
                Router.navigator.pushNamed(Router.gatherUps);

                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Peace of Mind', textAlign: TextAlign.right, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),),
              onTap: () {
                Router.navigator.pushNamed(Router.peaceofMind_Main);

                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Debt Eliminator', textAlign: TextAlign.right, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),),
              onTap: () {
                Router.navigator.pushNamed(Router.debtEliminator);

                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Reports', textAlign: TextAlign.right, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),),
              onTap: () {
                Router.navigator.pushNamed(Router.reports);

                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Add Credit Card', textAlign: TextAlign.right, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),),
              onTap: () {
                Router.navigator.pushNamed(Router.signup_5);

                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Add Savings Account', textAlign: TextAlign.right, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),),
              onTap: () {
                Router.navigator.pushNamed(Router.savingTools);

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
                Router.navigator.pushNamed(Router.loginScreen);

                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: _children.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            title: Text('Dictionary'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text('Profile'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            title: Text('More'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFFDAAA00),
        onTap: _onItemTapped,
      ),
    );
  }

}