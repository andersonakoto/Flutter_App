import 'dart:io';

import 'package:FyiFli/app_screens/dasboard_screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:grouped_buttons/grouped_buttons.dart';



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
      title: 'Fly Fli',
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
  int _selectedIndex = 0;
  TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _children =
  [
    Home(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        selectedItemColor: Colors.yellow[700],
        onTap: _onItemTapped,
      ),
    );
  }
}
