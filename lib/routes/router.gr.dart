// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/router_utils.dart';
import 'package:FyiFli/app_screens/launcher.dart';
import 'package:FyiFli/app_screens/log_in.dart';
import 'package:FyiFli/app_screens/signup_2.dart';
import 'package:FyiFli/app_screens/signup_3.dart';
import 'package:FyiFli/app_screens/signup_4.dart';
import 'package:FyiFli/app_screens/signup_5.dart';
import 'package:FyiFli/app_screens/congratulations.dart';
import 'package:FyiFli/app_screens/peaceofmind_launch.dart';
import 'package:FyiFli/app_screens/add_bank_account.dart';
import 'package:FyiFli/app_screens/dashboard.dart';
import 'package:FyiFli/app_screens/dasboard_screens/profile.dart';
import 'package:FyiFli/app_screens/dasboard_screens/edit_profile.dart';
import 'package:FyiFli/app_screens/dasboard_screens/connection_list.dart';
import 'package:FyiFli/app_screens/dasboard_screens/connection_requests.dart';
import 'package:FyiFli/app_screens/dasboard_screens/connected_profile.dart';
import 'package:FyiFli/app_screens/dasboard_screens/not_connected_profile.dart';
import 'package:FyiFli/app_screens/modals/high_school_students.dart';
import 'package:FyiFli/app_screens/modals/college_students.dart';
import 'package:FyiFli/app_screens/modals/graduates.dart';
import 'package:FyiFli/app_screens/modals/open_savings.dart';
import 'package:FyiFli/app_screens/dasboard_screens/people_you_may_know.dart';
import 'package:FyiFli/app_screens/dasboard_screens/live_budgeting.dart';
import 'package:FyiFli/app_screens/dasboard_screens/add_edit_category.dart';
import 'package:FyiFli/app_screens/dasboard_screens/add_edit_items.dart';
import 'package:FyiFli/app_screens/dasboard_screens/add_edit_goal.dart';
import 'package:FyiFli/app_screens/dasboard_screens/add_edit_wish.dart';
import 'package:FyiFli/app_screens/dasboard_screens/add_edit_peace_of_mind.dart';
import 'package:FyiFli/app_screens/dasboard_screens/add_edit_loan.dart';
import 'package:FyiFli/app_screens/dasboard_screens/gather_ups.dart';
import 'package:FyiFli/app_screens/dasboard_screens/peaceofmind_main.dart';
import 'package:FyiFli/app_screens/dasboard_screens/debt_eliminator.dart';
import 'package:FyiFli/app_screens/dasboard_screens/financial_dictionary.dart';
import 'package:FyiFli/app_screens/dasboard_screens/reports.dart';
import 'package:FyiFli/app_screens/dasboard_screens/saving_tools.dart';

class Router {
  static const launcher = '/launcher';
  static const onboarding_1 = '/onboarding_1';
  static const onboarding_2 = '/onboarding_2';
  static const onboarding_3 = '/onboarding_3';
  static const loginScreen = '/login-screen';
  static const signup_2 = '/signup_2';
  static const signup_3 = '/signup_3';
  static const signup_4 = '/signup_4';
  static const signup_5 = '/signup_5';
  static const congratulations = '/congratulations';
  static const peaceofmind_launch = '/peaceofmind_launch';
  static const addBankAccount = '/add-bank-account';
  static const dashboard = '/dashboard';
  static const profile = '/profile';
  static const editProfile = '/edit-profile';
  static const connectionList = '/connection-list';
  static const connectionRequests = '/connection-requests';
  static const connectedProfile = '/connected-profile';
  static const notConnectedProfile = '/not-connected-profile';
  static const highSchool = '/high-school';
  static const collegeStudents = '/college-students';
  static const graduates = '/graduates';
  static const openSavings = '/open-savings';
  static const peopleYouMayKnow = '/people-you-may-know';
  static const liveBudgeting = '/live-budgeting';
  static const addEditCategory = '/add-edit-category';
  static const addEditItems = '/add-edit-items';
  static const addEditGoal = '/add-edit-goal';
  static const addEditWish = '/add-edit-wish';
  static const addEditPeaceOfMind = '/add-edit-peace-of-mind';
  static const addEditLoan = '/add-edit-loan';
  static const gatherUps = '/gather-ups';
  static const peaceofMind_Main = '/peaceof-mind_-main';
  static const debtEliminator = '/debt-eliminator';
  static const dictionary = '/dictionary';
  static const reports = '/reports';
  static const savingTools = '/saving-tools';
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
      case Router.onboarding_1:
        return MaterialPageRoute(
          builder: (_) => Onboarding_1(),
          settings: settings,
        );
      case Router.onboarding_2:
        return MaterialPageRoute(
          builder: (_) => Onboarding_2(),
          settings: settings,
        );
      case Router.onboarding_3:
        return MaterialPageRoute(
          builder: (_) => Onboarding_3(),
          settings: settings,
        );
      case Router.loginScreen:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
          settings: settings,
        );
      case Router.signup_2:
        return MaterialPageRoute(
          builder: (_) => Signup2(),
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
      case Router.peaceofmind_launch:
        return MaterialPageRoute(
          builder: (_) => Peaceofmind_Launch(),
          settings: settings,
        );
      case Router.addBankAccount:
        return MaterialPageRoute(
          builder: (_) => AddBankAccount(),
          settings: settings,
        );
      case Router.dashboard:
        return MaterialPageRoute(
          builder: (_) => Dashboard(),
          settings: settings,
        );
      case Router.profile:
        return MaterialPageRoute(
          builder: (_) => Profile(),
          settings: settings,
        );
      case Router.editProfile:
        return MaterialPageRoute(
          builder: (_) => EditProfile(),
          settings: settings,
        );
      case Router.connectionList:
        return MaterialPageRoute(
          builder: (_) => ConnectionList(),
          settings: settings,
        );
      case Router.connectionRequests:
        return MaterialPageRoute(
          builder: (_) => ConnectionRequests(),
          settings: settings,
        );
      case Router.connectedProfile:
        return MaterialPageRoute(
          builder: (_) => ConnectedProfile(),
          settings: settings,
        );
      case Router.notConnectedProfile:
        return MaterialPageRoute(
          builder: (_) => NotConnectedProfile(),
          settings: settings,
        );
      case Router.highSchool:
        return MaterialPageRoute(
          builder: (_) => HighSchool(),
          settings: settings,
        );
      case Router.collegeStudents:
        return MaterialPageRoute(
          builder: (_) => CollegeStudents(),
          settings: settings,
        );
      case Router.graduates:
        return MaterialPageRoute(
          builder: (_) => Graduates(),
          settings: settings,
        );
      case Router.openSavings:
        return MaterialPageRoute(
          builder: (_) => OpenSavings(),
          settings: settings,
        );
      case Router.peopleYouMayKnow:
        return MaterialPageRoute(
          builder: (_) => PeopleYouMayKnow(),
          settings: settings,
        );
      case Router.liveBudgeting:
        return MaterialPageRoute(
          builder: (_) => LiveBudgeting(),
          settings: settings,
        );
      case Router.addEditCategory:
        return MaterialPageRoute(
          builder: (_) => AddEditCategory(),
          settings: settings,
        );
      case Router.addEditItems:
        return MaterialPageRoute(
          builder: (_) => AddEditItems(),
          settings: settings,
        );
      case Router.addEditGoal:
        return MaterialPageRoute(
          builder: (_) => AddEditGoal(),
          settings: settings,
        );
      case Router.addEditWish:
        return MaterialPageRoute(
          builder: (_) => AddEditWish(),
          settings: settings,
        );
      case Router.addEditPeaceOfMind:
        return MaterialPageRoute(
          builder: (_) => AddEditPeaceOfMind(),
          settings: settings,
        );
      case Router.addEditLoan:
        return MaterialPageRoute(
          builder: (_) => AddEditLoan(),
          settings: settings,
        );
      case Router.gatherUps:
        return MaterialPageRoute(
          builder: (_) => GatherUps(),
          settings: settings,
        );
      case Router.peaceofMind_Main:
        return MaterialPageRoute(
          builder: (_) => PeaceofMind_Main(),
          settings: settings,
        );
      case Router.debtEliminator:
        return MaterialPageRoute(
          builder: (_) => DebtEliminator(),
          settings: settings,
        );
      case Router.dictionary:
        return MaterialPageRoute(
          builder: (_) => Dictionary(),
          settings: settings,
        );
      case Router.reports:
        return MaterialPageRoute(
          builder: (_) => Reports(),
          settings: settings,
        );
      case Router.savingTools:
        return MaterialPageRoute(
          builder: (_) => SavingTools(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}
