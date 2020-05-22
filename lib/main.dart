import 'package:FyiFli/app_screens/signup.dart';
import 'package:flutter/material.dart';

import 'app_screens/launcher.dart';
import 'package:FyiFli/routes/router.gr.dart';

void main() => runApp(Main());

class Main extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlyFli',
      initialRoute: Router.launcher,
      onGenerateRoute: Router.onGenerateRoute,
      navigatorKey: Router.navigatorKey,
    );
  }

}
