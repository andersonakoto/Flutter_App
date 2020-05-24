import 'package:FyiFli/app_screens/signup_3.dart';
import 'package:flutter/material.dart';

import 'app_screens/launcher.dart';
import 'package:FyiFli/routes/router.gr.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fly Fli',
      theme: ThemeData(fontFamily: 'Gilroy'),
      initialRoute: Router.dictionary,
      onGenerateRoute: Router.onGenerateRoute,
      navigatorKey: Router.navigatorKey,
    );
  }
}

