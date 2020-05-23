import 'package:FyiFli/app_screens/add_bank_account.dart';
import 'package:FyiFli/app_screens/congratulations.dart';
import 'package:FyiFli/app_screens/dashboard.dart';
import 'package:FyiFli/app_screens/launcher.dart';
import 'package:FyiFli/app_screens/peaceofmind.dart';
import 'package:FyiFli/app_screens/signup_3.dart';
import 'package:FyiFli/app_screens/signup_4.dart';
import 'package:FyiFli/app_screens/signup_5.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:auto_route/transitions_builders.dart';

@autoRouter
class $Router {
  Launcher launcher;
  Signup3 signup_3;
  Signup4 signup_4;
  Signup5 signup_5;
  Congratulations congratulations;
  Peaceofmind peaceofmind;
  AddBankAccount addBankAccount;
  Dashboard dashboard;

}