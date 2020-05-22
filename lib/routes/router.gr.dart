// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/router_utils.dart';
import 'package:FyiFli/app_screens/launcher.dart';
import 'package:FyiFli/app_screens/signup.dart';

class Router {
  static const launcher = '/launcher';
  static const signup = '/signup';
  static GlobalKey<NavigatorState> get navigatorKey =>
      getNavigatorKey<Router>();
  static NavigatorState get navigator => navigatorKey.currentState;

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Router.launcher:
        return MaterialPageRoute(
          builder: (_) => Launcher(),
          settings: settings,
        );
      case Router.signup:
        return MaterialPageRoute(
          builder: (_) => Signup(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}
