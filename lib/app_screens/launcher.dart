import 'package:FyiFli/app_screens/ui/base_widget.dart';
import 'package:FyiFli/app_screens/ui/sizing_info.dart';
import 'package:FyiFli/enums/device_screen_type.dart';
import 'package:FyiFli/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';

class Launcher extends StatefulWidget {
  @override
  _LauncherState createState() => _LauncherState();
}

class _LauncherState extends State<Launcher> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
    ));
    return BaseWidget(builder: (context, sizingInformation) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fyi Fli',
        theme: ThemeData(fontFamily: 'Gilroy'),
        home: Scaffold(
          body: PageViewLauncher(),
            ),
      );
    });
  }
}

class PageViewLauncher extends StatefulWidget {
  @override
  _PageViewDemoState createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewLauncher> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: [
        Onboarding_1(),
        Onboarding_2(),
        Onboarding_3(),
      ],
    );
  }
}

class Onboarding_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(50.0),
                child: Image.asset(
                  'assets/images/onboarding_1.png',
                  alignment: Alignment.center,
                  height: 300,
                  width: 500,
                ),
              ),
              Container(
                child: Text(
                  'Everything Effortless',
                  style: TextStyle(
                      color: Color(0xFF00249C),
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.normal,
                      fontSize: 30),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                child: Text(
                  'Mauris quis orci faucibus, egestas nibh sed vestibulum elit. Nam est dui, vestibulum elit',
                  style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                child: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  color: Color(0xFF00249C),
                  onPressed: () =>
                      Router.navigator.pushNamed(Router.onboarding_2),
                ),
              ),
            ],
          ),
        ));
  }
}

class Onboarding_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(50.0),
                child: Image.asset(
                  'assets/images/onboarding_2.png',
                  alignment: Alignment.center,
                  height: 300,
                  width: 500,
                ),
              ),
              Container(
                child: Text(
                  'Financial Planning',
                  style: TextStyle(
                      color: Color(0xFF00249C),
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.normal,
                      fontSize: 30),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                child: Text(
                  'Mauris quis orci faucibus, egestas nibh sed vestibulum elit. Nam est dui, vestibulum elit',
                  style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                child: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  color: Color(0xFF00249C),
                  onPressed: () =>
                      Router.navigator.pushNamed(Router.onboarding_3),
                ),
              ),
            ],
          ),
        ));
  }
}

class Onboarding_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(50.0),
                child: Image.asset(
                  'assets/images/onboarding_3.png',
                  alignment: Alignment.center,
                  height: 300,
                  width: 500,
                ),
              ),
              Container(
                child: Text(
                  'Stay In The Green',
                  style: TextStyle(
                      color: Color(0xFF00249C),
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.normal,
                      fontSize: 30),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                child: Text(
                  'Mauris quis orci faucibus, egestas nibh sed vestibulum elit. Nam est dui, vestibulum elit',
                  style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                child: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  color: Color(0xFF00249C),
                  onPressed: () =>
                      Router.navigator.pushNamed(Router.loginScreen),
                ),
              ),
            ],
          ),
        ));
  }
}
