import 'package:FyiFli/app_screens/add_bank_account.dart';
import 'package:FyiFli/app_screens/congratulations.dart';
import 'package:FyiFli/app_screens/dasboard_screens/add_edit_category.dart';
import 'package:FyiFli/app_screens/dasboard_screens/add_edit_goal.dart';
import 'package:FyiFli/app_screens/dasboard_screens/add_edit_items.dart';
import 'package:FyiFli/app_screens/dasboard_screens/add_edit_loan.dart';
import 'package:FyiFli/app_screens/dasboard_screens/add_edit_peace_of_mind.dart';
import 'package:FyiFli/app_screens/dasboard_screens/add_edit_wish.dart';
import 'package:FyiFli/app_screens/dasboard_screens/debt_eliminator.dart';
import 'package:FyiFli/app_screens/dasboard_screens/financial_dictionary.dart';
import 'package:FyiFli/app_screens/dasboard_screens/gather_ups.dart';
import 'package:FyiFli/app_screens/dasboard_screens/live_budgeting.dart';
import 'package:FyiFli/app_screens/dasboard_screens/peaceofmind_main.dart';
import 'package:FyiFli/app_screens/dasboard_screens/reports.dart';
import 'package:FyiFli/app_screens/dasboard_screens/saving_tools.dart';
import 'package:FyiFli/app_screens/dashboard.dart';
import 'package:FyiFli/app_screens/launcher.dart';
import 'package:FyiFli/app_screens/peaceofmind_launch.dart';
import 'package:FyiFli/app_screens/signup_2.dart';
import 'package:FyiFli/app_screens/signup_3.dart';
import 'package:FyiFli/app_screens/signup_4.dart';
import 'package:FyiFli/app_screens/signup_5.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:auto_route/transitions_builders.dart';

@autoRouter
class $Router {
  Launcher launcher;
  Signup2 signup_2;
  Signup3 signup_3;
  Signup4 signup_4;
  Signup5 signup_5;
  Congratulations congratulations;
  Peaceofmind_Launch peaceofmind_launch;
  AddBankAccount addBankAccount;
  Dashboard dashboard;
  LiveBudgeting liveBudgeting;
  AddEditCategory addEditCategory;
  AddEditItems addEditItems;
  AddEditGoal addEditGoal;
  AddEditWish addEditWish;
  AddEditPeaceOfMind addEditPeaceOfMind;
  AddEditLoan addEditLoan;
  GatherUps gatherUps;
  PeaceofMind_Main peaceofMind_Main;
  DebtEliminator debtEliminator;
  Dictionary dictionary;
  Reports reports;
  SavingTools savingTools;


}