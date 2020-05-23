// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/router_utils.dart';
import 'package:FyiFli/app_screens/launcher.dart';
import 'package:FyiFli/app_screens/signup_3.dart';
import 'package:FyiFli/app_screens/signup_4.dart';
import 'package:FyiFli/app_screens/signup_5.dart';
import 'package:FyiFli/app_screens/congratulations.dart';
import 'package:FyiFli/app_screens/peaceofmind.dart';
import 'package:FyiFli/app_screens/add_bank_account.dart';

class Router {
  static const launcher = '/launcher';
  static const signup_3 = '/signup_3';
  static const signup_4 = '/signup_4';
  static const signup_5 = '/signup_5';
  static const congratulations = '/congratulations';
  static const peaceofmind = '/peaceofmind';
  static const addBankAccount = '/add-bank-account';
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
      case Router.signup_3:
        return MaterialPageRoute(
          builder: (_) => Signup3(),
          settings: settings,
        );
      case Router.signup_4:
        return MaterialPageRoute(
          builder: (_) => Signup4(),
          settings: settings,
        );
      case Router.signup_5:
        return MaterialPageRoute(
          builder: (_) => Signup5(),
          settings: settings,
        );
      case Router.congratulations:
        return MaterialPageRoute(
          builder: (_) => Congratulations(),
          settings: settings,
        );
      case Router.peaceofmind:
        return MaterialPageRoute(
          builder: (_) => Peaceofmind(),
          settings: settings,
        );
      case Router.addBankAccount:
        return MaterialPageRoute(
          builder: (_) => AddBankAccount(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}
