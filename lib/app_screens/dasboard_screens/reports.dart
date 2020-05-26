import 'dart:io';
import 'package:FyiFli/routes/router.gr.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:FyiFli/main.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../custom_tile.dart';



class SimpleLineChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  SimpleLineChart(this.seriesList, {this.animate});

  /// Creates a [LineChart] with sample data and no transition.
  factory SimpleLineChart.withSampleData() {
    return new SimpleLineChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }


  @override
  Widget build(BuildContext context) {
    return new charts.LineChart(seriesList, animate: animate);
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<LinearSales, int>> _createSampleData() {
    final data = [
      new LinearSales(0, 5),
      new LinearSales(1, 25),
      new LinearSales(2, 100),
      new LinearSales(3, 75),
    ];

    return [
      new charts.Series<LinearSales, int>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

/// Sample linear data type.
class LinearSales {
  final int year;
  final int sales;

  LinearSales(this.year, this.sales);
}



class Reports extends StatefulWidget {
  @override
  _ReportsState createState() => _ReportsState();
}




class _ReportsState extends State<Reports> {

  bool isExpanded1, isExpanded2;

  @override
  void initState() {
    this.isExpanded1 = false;
    this.isExpanded2 = false;

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
    ));

    Widget goal_container = Container(
        margin: EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0, bottom: 0.0),

        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 1.0, // soften the shadow
            spreadRadius: 0.2, //extend the shadow
          )
        ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(left: 20.0, top: 20.0, right: 0.0, bottom: 30.0),
                child: Row(
                    children: [
                      Text(
                        'Target - \$2000      ',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey[700],
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'Acquired - \$2000 ',
                        style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w900,
                          color: Color(0xFF00249C),
                        ),
                        textAlign: TextAlign.left,
                      ),])
            ),
            CircularPercentIndicator(
              radius: 140.0,
              lineWidth: 15.0,
              animation: true,
              percent: 0.6,
              center: Text("100%", style: TextStyle(color: Color(0xFF00249C), fontWeight: FontWeight.bold, fontSize: 20.0)),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: Color(0xFF00249C),
            ),
            Text(
              'Excellent',
              style: TextStyle(
                fontSize: 20,
                color: Colors.green[700],
              ),
              textAlign: TextAlign.left,
            ),
          ],
        )
    );
    Widget goal_head = Container(
        margin: EdgeInsets.only(left: 20.0, top: 0.0, right: 10.0, bottom: 0.0),

        child: Row (
          children: [
            Text(
              'Goal Name',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w900
              ),
              textAlign: TextAlign.left,
            ),

          ],
        )
    );
    Widget goal_expand = Container(
      margin: EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
      height: 280,
      child: goal_container,
    );
    Widget goal = Card(
        color: Colors.transparent, shadowColor: Colors.transparent,
        child: CustomExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              this.isExpanded1 = !isExpanded;
            });
          },
          children: <ExpansionPanel>[
            new ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded)
              => goal_head, body: goal_expand,
              isExpanded: this.isExpanded1,
            ),
          ],
        )
    );


    Widget loan_container = Container(
        margin: EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0, bottom: 0.0),

        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 1.0, // soften the shadow
            spreadRadius: 0.2, //extend the shadow
          )
        ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(left: 20.0, top: 20.0, right: 0.0, bottom: 30.0),
                child: Row(
                    children: [
                      Text(
                        'Target - \$2000      ',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey[700],
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'Cleared - \$2000 ',
                        style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w900,
                          color: Color(0xFF00249C),
                        ),
                        textAlign: TextAlign.left,
                      ),])
            ),
            CircularPercentIndicator(
              radius: 140.0,
              lineWidth: 15.0,
              animation: true,
              percent: 0.6,
              center: Text("100%", style: TextStyle(color:Color(0xFF00249C), fontWeight: FontWeight.bold, fontSize: 20.0)),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: Color(0xFF00249C),
            ),
            Text(
              'Excellent',
              style: TextStyle(
                fontSize: 20,
                color: Colors.green[700],
              ),
              textAlign: TextAlign.left,
            ),
          ],
        )
    );
    Widget loan_head = Container(
        margin: EdgeInsets.only(left: 20.0, top: 0.0, right: 10.0, bottom: 0.0),

        child: Row (
          children: [
            Text(
              'Loan Name',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w900
              ),
              textAlign: TextAlign.left,
            ),

          ],
        )
    );
    Widget loan_expand = Container(
      margin: EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
      height: 280,
      child: loan_container,
    );
    Widget loan = Card(
        color: Colors.transparent, shadowColor: Colors.transparent,
        child: CustomExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              this.isExpanded2 = !isExpanded;
            });
          },
          children: <ExpansionPanel>[
            new ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded)
              => loan_head, body: loan_expand,
              isExpanded: this.isExpanded2,
            ),
          ],
        )
    );





    Widget reportTitle = Container(
        margin: EdgeInsets.only(left: 0.0, top: 40.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topCenter,
        child: Row(
          children: <Widget>[
            Container(
              margin:
              EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                color: Color(0xFF00249C),
                onPressed: ()=> Router.navigator.pushNamed(Router.dashboard),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: 100.0, top: 0.0, right: 0.0, bottom: 0.0),
              child: Text(
                'Reports',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[800],
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),

          ],
        ));

    Widget daily = Container(
        margin:
        EdgeInsets.only(left: 40.0, top: 40.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Color(0xFFDAAA00), borderRadius: BorderRadius.circular(20)),
        child: FlatButton(
          textColor: Colors.grey[700],
          onPressed: () {},
          child: Text(
            "Daily",
            style: TextStyle(fontSize: 15.0),
          ),
        ));

    Widget monthly = Container(
        margin:
        EdgeInsets.only(left: 10.0, top: 40.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Color(0xFFDAAA00), borderRadius: BorderRadius.circular(20)),
        child: FlatButton(
          textColor: Colors.grey[700],
          onPressed: () {},
          child: Text(
            "Monthly",
            style: TextStyle(fontSize: 15.0),
          ),
        ));

    Widget yearly = Container(
        margin:
        EdgeInsets.only(left: 5.0, top: 40.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color:Color(0xFFDAAA00), borderRadius: BorderRadius.circular(20)),
        child: FlatButton(
          textColor: Colors.grey[700],
          onPressed: () {},
          child: Text(
            "Yearly",
            style: TextStyle(fontSize: 15.0),
          ),
        ));


    Widget live_budgeting = Container(
        margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topLeft,
        child: Text(
          'Live Budgeting',
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey[700], fontWeight: FontWeight.w900
          ),
          textAlign: TextAlign.left,
        ));

    Widget budget_line = Container(
      margin: EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
      child: Divider(
        indent: 5,
        endIndent: 5,
        color: Color(0xFFDAAA00),
        thickness: 1.5,
      ),
    );

    Widget saving_goal = Container(
        margin: EdgeInsets.only(left: 20.0, top: 40.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topLeft,
        child: Text(
          'Saving Goal',
          style: TextStyle(
              fontSize: 20,
              color: Colors.grey[700], fontWeight: FontWeight.w900
          ),
          textAlign: TextAlign.left,
        ));

    Widget saving_line = Container(
      margin: EdgeInsets.only(left: 0.0, top: 40.0, right: 0.0, bottom: 0.0),
      child: Divider(
        indent: 5,
        endIndent: 5,
        color: Color(0xFFDAAA00),
        thickness: 1.5,
      ),
    );


    Widget debt_eliminator = Container(
        margin: EdgeInsets.only(left: 20.0, top: 20.0, right: 0.0, bottom: 20.0),
        alignment: Alignment.topLeft,
        child: Text(
          'Debt Eliminator',
          style: TextStyle(
              fontSize: 20,
              color: Colors.grey[700], fontWeight: FontWeight.w900
          ),
          textAlign: TextAlign.left,
        ));

    Widget debt_line = Container(
      margin: EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0, bottom: 20.0),
      child: Divider(
        indent: 5,
        endIndent: 5,
        color: Color(0xFFDAAA00),
        thickness: 1.5,
      ),
    );


    Widget gather_container1 = Container(
        margin: EdgeInsets.only(left: 0.0, top: 40.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.center,
        height: 200,
        width: 320,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 1.0, // soften the shadow
            spreadRadius: 0.2, //extend the shadow
          )
        ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                  left: 10.0, top: 25.0, right: 0.0, bottom: 0.0), width: 150, height: 150,
              child: SimpleLineChart.withSampleData()
            ),
          ],
        ));


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fyi Fli',
      theme: ThemeData(fontFamily: 'Gilroy'),
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        body: Container(
          child: Stack(children: <Widget>[
            Container(
              child: SingleChildScrollView(
                child: Container(
                    child: Column(
                      children: <Widget>[
                        reportTitle,
                        Row(
                        children: [live_budgeting, Expanded(child: budget_line)]
                        ),
                        Row(
                            children: [daily, monthly, yearly]
                        ),
                        gather_container1,
                        Row(
                            children: [saving_goal, Expanded(child: saving_line)]
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20.0, top: 40.0, right: 20.0, bottom: 0.0),
                          child: goal,
                        ),
                        Row(
                            children: [debt_eliminator, Expanded(child: debt_line)]
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20.0, top: 0.0, right: 20.0, bottom: 40.0),
                          child: loan,
                        ),
                      ],
                    )),
              ),
            ),
            Container(
              height: 80,
              child: Row(
                children: [reportTitle],
              ),
              decoration: BoxDecoration(color: Colors.white),
            ),
          ]),
        ),
      ),
    );
  }
}


Widget goal_container = Container(
    margin: EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0, bottom: 0.0),

    decoration: BoxDecoration(boxShadow: [
      BoxShadow(
        color: Colors.grey,
        blurRadius: 1.0, // soften the shadow
        spreadRadius: 0.2, //extend the shadow
      )
    ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
    child: Column(
      children: [
        Container(
            margin: EdgeInsets.only(left: 20.0, top: 20.0, right: 0.0, bottom: 30.0),
            child: Row(
                children: [
                  Text(
                    'Target - \$2000      ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[700],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    'Acquired - \$2000 ',
                    style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w900,
                      color: Color(0xFF00249C),
                    ),
                    textAlign: TextAlign.left,
                  ),])
        ),
        CircularPercentIndicator(
          radius: 140.0,
          lineWidth: 15.0,
          animation: true,
          percent: 0.6,
          center: Text("100%", style: TextStyle(color: Color(0xFF00249C), fontWeight: FontWeight.bold, fontSize: 20.0)),
          circularStrokeCap: CircularStrokeCap.round,
          progressColor: Color(0xFF00249C),
        ),
        Text(
          'Excellent',
          style: TextStyle(
            fontSize: 20,
            color: Colors.green[700],
          ),
          textAlign: TextAlign.left,
        ),
      ],
    )
);