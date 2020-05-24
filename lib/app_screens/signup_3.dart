import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:FyiFli/main.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class Signup3 extends StatefulWidget {
  @override
  _Signup3State createState() => _Signup3State();
}

class _Signup3State extends State<Signup3> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
    ));

    Widget topPart = Container(
        margin: EdgeInsets.only(left: 0.0, top: 40.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topCenter,
        child: Row(
          children: <Widget>[
            Container(
              margin:
                  EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                color: Colors.blue,
                onPressed: () {},
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: 100.0, top: 0.0, right: 0.0, bottom: 0.0),
              child: Text(
                'Sign Up',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[800],
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ));

    Widget rankText = Container(
        margin: EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topCenter,
        child: Text(
          'Rank Your Knowledge On These\nFinancial Literacy/Literary Terms\nBelow:',
          style: TextStyle(
              fontSize: 20,
              color: Colors.grey[800],
              fontWeight: FontWeight.w700),
          textAlign: TextAlign.left,
        ));

    Widget checkTitles = Container(
        margin: EdgeInsets.only(left: 0.0, top: 40.0, right: 0.0, bottom: 0.0),
        alignment: Alignment.topCenter,
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                  left: 130.0, top: 0.0, right: 0.0, bottom: 0.0),
              child: Text(
                'Unfamiliar',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.yellow[800],
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: 25.0, top: 0.0, right: 0.0, bottom: 0.0),
              child: Text(
                'Familiar',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.yellow[800],
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: 25.0, top: 0.0, right: 0.0, bottom: 0.0),
              child: Text(
                'Expert',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.yellow[800],
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ));

    List<String> _checked = ["unfamiliar"];

    Widget box_invest = Container(
      alignment: Alignment.topCenter,
      child: Row(children: <Widget>[
        Container(
          margin:
              EdgeInsets.only(left: 20.0, top: 10.0, right: 0.0, bottom: 0.0),
          child: Text(
            'Investing',
            style: TextStyle(
                color: Colors.grey[800],
                fontSize: 20,
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(left: 45.0, top: 10.0, right: 0.0, bottom: 0.0),
          child: CheckboxGroup(
            orientation: GroupedButtonsOrientation.HORIZONTAL,
            margin: const EdgeInsets.only(left: 0.0),
            onSelected: (List selected) => setState(() {
              _checked = selected;
            }),
            labels: <String>["unfamiliar"],
            //checked: _checked,
            itemBuilder: (Checkbox cb, Text txt, int i) {
              return Column(
                children: <Widget>[cb],
              );
            },
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
          child: CheckboxGroup(
            orientation: GroupedButtonsOrientation.HORIZONTAL,
            margin: const EdgeInsets.only(left: 30.0),
            onSelected: (List selected) => setState(() {
              _checked = selected;
            }),
            labels: <String>["familiar"],
            //checked: _checked,
            itemBuilder: (Checkbox cb, Text txt, int i) {
              return Column(
                children: <Widget>[cb],
              );
            },
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
          child: CheckboxGroup(
            orientation: GroupedButtonsOrientation.HORIZONTAL,
            margin: const EdgeInsets.only(left: 20.0),
            onSelected: (List selected) => setState(() {
              _checked = selected;
            }),
            labels: <String>["expert"],
            //checked: _checked,
            itemBuilder: (Checkbox cb, Text txt, int i) {
              return Column(
                children: <Widget>[cb],
              );
            },
          ),
        ),
      ]),
    );

    Widget box_insurance = Container(
      alignment: Alignment.topCenter,
      child: Row(children: <Widget>[
        Container(
          margin:
              EdgeInsets.only(left: 20.0, top: 10.0, right: 0.0, bottom: 0.0),
          child: Text(
            'Insurance',
            style: TextStyle(
                color: Colors.grey[800],
                fontSize: 20,
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(left: 10.0, top: 10.0, right: 0.0, bottom: 0.0),
          child: CheckboxGroup(
            orientation: GroupedButtonsOrientation.HORIZONTAL,
            margin: const EdgeInsets.only(left: 30.0),
            onSelected: (List selected) => setState(() {
              _checked = selected;
            }),
            labels: <String>["unfamiliar"],
            //checked: _checked,
            itemBuilder: (Checkbox cb, Text txt, int i) {
              return Column(
                children: <Widget>[cb],
              );
            },
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
          child: CheckboxGroup(
            orientation: GroupedButtonsOrientation.HORIZONTAL,
            margin: const EdgeInsets.only(left: 30.0),
            onSelected: (List selected) => setState(() {
              _checked = selected;
            }),
            labels: <String>["familiar"],
            //checked: _checked,
            itemBuilder: (Checkbox cb, Text txt, int i) {
              return Column(
                children: <Widget>[cb],
              );
            },
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
          child: CheckboxGroup(
            orientation: GroupedButtonsOrientation.HORIZONTAL,
            margin: const EdgeInsets.only(left: 20.0),
            onSelected: (List selected) => setState(() {
              _checked = selected;
            }),
            labels: <String>["expert"],
            //checked: _checked,
            itemBuilder: (Checkbox cb, Text txt, int i) {
              return Column(
                children: <Widget>[cb],
              );
            },
          ),
        ),
      ]),
    );

    Widget box_taxes = Container(
      alignment: Alignment.topCenter,
      child: Row(children: <Widget>[
        Container(
          margin:
              EdgeInsets.only(left: 20.0, top: 10.0, right: 0.0, bottom: 0.0),
          child: Text(
            'Taxes',
            style: TextStyle(
                color: Colors.grey[800],
                fontSize: 20,
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(left: 40.0, top: 10.0, right: 0.0, bottom: 0.0),
          child: CheckboxGroup(
            orientation: GroupedButtonsOrientation.HORIZONTAL,
            margin: const EdgeInsets.only(left: 30.0),
            onSelected: (List selected) => setState(() {
              _checked = selected;
            }),
            labels: <String>["unfamiliar"],
            //checked: _checked,
            itemBuilder: (Checkbox cb, Text txt, int i) {
              return Column(
                children: <Widget>[cb],
              );
            },
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
          child: CheckboxGroup(
            orientation: GroupedButtonsOrientation.HORIZONTAL,
            margin: const EdgeInsets.only(left: 30.0),
            onSelected: (List selected) => setState(() {
              _checked = selected;
            }),
            labels: <String>["familiar"],
            //checked: _checked,
            itemBuilder: (Checkbox cb, Text txt, int i) {
              return Column(
                children: <Widget>[cb],
              );
            },
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
          child: CheckboxGroup(
            orientation: GroupedButtonsOrientation.HORIZONTAL,
            margin: const EdgeInsets.only(left: 20.0),
            onSelected: (List selected) => setState(() {
              _checked = selected;
            }),
            labels: <String>["expert"],
            //checked: _checked,
            itemBuilder: (Checkbox cb, Text txt, int i) {
              return Column(
                children: <Widget>[cb],
              );
            },
          ),
        ),
      ]),
    );

    Widget box_credit = Container(
      alignment: Alignment.topCenter,
      child: Row(children: <Widget>[
        Container(
          margin:
              EdgeInsets.only(left: 20.0, top: 10.0, right: 0.0, bottom: 0.0),
          child: Text(
            'Credit',
            style: TextStyle(
                color: Colors.grey[800],
                fontSize: 20,
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(left: 38.0, top: 10.0, right: 0.0, bottom: 0.0),
          child: CheckboxGroup(
            orientation: GroupedButtonsOrientation.HORIZONTAL,
            margin: const EdgeInsets.only(left: 30.0),
            onSelected: (List selected) => setState(() {
              _checked = selected;
            }),
            labels: <String>["unfamiliar"],
            //checked: _checked,
            itemBuilder: (Checkbox cb, Text txt, int i) {
              return Column(
                children: <Widget>[cb],
              );
            },
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
          child: CheckboxGroup(
            orientation: GroupedButtonsOrientation.HORIZONTAL,
            margin: const EdgeInsets.only(left: 30.0),
            onSelected: (List selected) => setState(() {
              _checked = selected;
            }),
            labels: <String>["familiar"],
            //checked: _checked,
            itemBuilder: (Checkbox cb, Text txt, int i) {
              return Column(
                children: <Widget>[cb],
              );
            },
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
          child: CheckboxGroup(
            orientation: GroupedButtonsOrientation.HORIZONTAL,
            margin: const EdgeInsets.only(left: 20.0),
            onSelected: (List selected) => setState(() {
              _checked = selected;
            }),
            labels: <String>["expert"],
            //checked: _checked,
            itemBuilder: (Checkbox cb, Text txt, int i) {
              return Column(
                children: <Widget>[cb],
              );
            },
          ),
        ),
      ]),
    );

    Widget box_debit = Container(
      alignment: Alignment.topCenter,
      child: Row(children: <Widget>[
        Container(
          margin:
              EdgeInsets.only(left: 20.0, top: 10.0, right: 0.0, bottom: 0.0),
          child: Text(
            'Debit',
            style: TextStyle(
                color: Colors.grey[800],
                fontSize: 20,
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(left: 43.0, top: 10.0, right: 0.0, bottom: 0.0),
          child: CheckboxGroup(
            orientation: GroupedButtonsOrientation.HORIZONTAL,
            margin: const EdgeInsets.only(left: 30.0),
            onSelected: (List selected) => setState(() {
              _checked = selected;
            }),
            labels: <String>["unfamiliar"],
            //checked: _checked,
            itemBuilder: (Checkbox cb, Text txt, int i) {
              return Column(
                children: <Widget>[cb],
              );
            },
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
          child: CheckboxGroup(
            orientation: GroupedButtonsOrientation.HORIZONTAL,
            margin: const EdgeInsets.only(left: 30.0),
            onSelected: (List selected) => setState(() {
              _checked = selected;
            }),
            labels: <String>["familiar"],
            //checked: _checked,
            itemBuilder: (Checkbox cb, Text txt, int i) {
              return Column(
                children: <Widget>[cb],
              );
            },
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
          child: CheckboxGroup(
            orientation: GroupedButtonsOrientation.HORIZONTAL,
            margin: const EdgeInsets.only(left: 20.0),
            onSelected: (List selected) => setState(() {
              _checked = selected;
            }),
            labels: <String>["expert"],
            //checked: _checked,
            itemBuilder: (Checkbox cb, Text txt, int i) {
              return Column(
                children: <Widget>[cb],
              );
            },
          ),
        ),
      ]),
    );

    Widget box_cards = Container(
      alignment: Alignment.topCenter,
      child: Row(children: <Widget>[
        Container(
          margin:
              EdgeInsets.only(left: 20.0, top: 10.0, right: 0.0, bottom: 0.0),
          child: Text(
            'Credit Cards',
            style: TextStyle(
                color: Colors.grey[800],
                fontSize: 20,
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
          child: CheckboxGroup(
            orientation: GroupedButtonsOrientation.HORIZONTAL,
            margin: const EdgeInsets.only(left: 18.0),
            onSelected: (List selected) => setState(() {
              _checked = selected;
            }),
            labels: <String>["unfamiliar"],
            //checked: _checked,
            itemBuilder: (Checkbox cb, Text txt, int i) {
              return Column(
                children: <Widget>[cb],
              );
            },
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
          child: CheckboxGroup(
            orientation: GroupedButtonsOrientation.HORIZONTAL,
            margin: const EdgeInsets.only(left: 30.0),
            onSelected: (List selected) => setState(() {
              _checked = selected;
            }),
            labels: <String>["familiar"],
            //checked: _checked,
            itemBuilder: (Checkbox cb, Text txt, int i) {
              return Column(
                children: <Widget>[cb],
              );
            },
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
          child: CheckboxGroup(
            orientation: GroupedButtonsOrientation.HORIZONTAL,
            margin: const EdgeInsets.only(left: 20.0),
            onSelected: (List selected) => setState(() {
              _checked = selected;
            }),
            labels: <String>["expert"],
            //checked: _checked,
            itemBuilder: (Checkbox cb, Text txt, int i) {
              return Column(
                children: <Widget>[cb],
              );
            },
          ),
        ),
      ]),
    );

    Widget box_internet = Container(
      alignment: Alignment.topCenter,
      child: Row(children: <Widget>[
        Container(
          margin:
              EdgeInsets.only(left: 20.0, top: 10.0, right: 0.0, bottom: 0.0),
          child: Text(
            'Internet Rates',
            style: TextStyle(
                color: Colors.grey[800],
                fontSize: 20,
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
          child: CheckboxGroup(
            orientation: GroupedButtonsOrientation.HORIZONTAL,
            margin: const EdgeInsets.only(left: 6.0),
            onSelected: (List selected) => setState(() {
              _checked = selected;
            }),
            labels: <String>["unfamiliar"],
            //checked: _checked,
            itemBuilder: (Checkbox cb, Text txt, int i) {
              return Column(
                children: <Widget>[cb],
              );
            },
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
          child: CheckboxGroup(
            orientation: GroupedButtonsOrientation.HORIZONTAL,
            margin: const EdgeInsets.only(left: 30.0),
            onSelected: (List selected) => setState(() {
              _checked = selected;
            }),
            labels: <String>["familiar"],
            //checked: _checked,
            itemBuilder: (Checkbox cb, Text txt, int i) {
              return Column(
                children: <Widget>[cb],
              );
            },
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
          child: CheckboxGroup(
            orientation: GroupedButtonsOrientation.HORIZONTAL,
            margin: const EdgeInsets.only(left: 20.0),
            onSelected: (List selected) => setState(() {
              _checked = selected;
            }),
            labels: <String>["expert"],
            //checked: _checked,
            itemBuilder: (Checkbox cb, Text txt, int i) {
              return Column(
                children: <Widget>[cb],
              );
            },
          ),
        ),
      ]),
    );

    Widget box_inflation = Container(
      alignment: Alignment.topCenter,
      child: Row(children: <Widget>[
        Container(
          margin:
              EdgeInsets.only(left: 20.0, top: 10.0, right: 0.0, bottom: 0.0),
          child: Text(
            'Inflation',
            style: TextStyle(
                color: Colors.grey[800],
                fontSize: 20,
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
          child: CheckboxGroup(
            orientation: GroupedButtonsOrientation.HORIZONTAL,
            margin: const EdgeInsets.only(left: 49.0),
            onSelected: (List selected) => setState(() {
              _checked = selected;
            }),
            labels: <String>["unfamiliar"],
            //checked: _checked,
            itemBuilder: (Checkbox cb, Text txt, int i) {
              return Column(
                children: <Widget>[cb],
              );
            },
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
          child: CheckboxGroup(
            orientation: GroupedButtonsOrientation.HORIZONTAL,
            margin: const EdgeInsets.only(left: 30.0),
            onSelected: (List selected) => setState(() {
              _checked = selected;
            }),
            labels: <String>["familiar"],
            //checked: _checked,
            itemBuilder: (Checkbox cb, Text txt, int i) {
              return Column(
                children: <Widget>[cb],
              );
            },
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
          child: CheckboxGroup(
            orientation: GroupedButtonsOrientation.HORIZONTAL,
            margin: const EdgeInsets.only(left: 20.0),
            onSelected: (List selected) => setState(() {
              _checked = selected;
            }),
            labels: <String>["expert"],
            //checked: _checked,
            itemBuilder: (Checkbox cb, Text txt, int i) {
              return Column(
                children: <Widget>[cb],
              );
            },
          ),
        ),
      ]),
    );

    Widget box_retire = Container(
      alignment: Alignment.topCenter,
      child: Row(children: <Widget>[
        Container(
          margin:
              EdgeInsets.only(left: 20.0, top: 10.0, right: 0.0, bottom: 0.0),
          child: Text(
            '401K &\nRetirement',
            style: TextStyle(
                color: Colors.grey[800],
                fontSize: 20,
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
          child: CheckboxGroup(
            orientation: GroupedButtonsOrientation.HORIZONTAL,
            margin: const EdgeInsets.only(left: 28.0),
            onSelected: (List selected) => setState(() {
              _checked = selected;
            }),
            labels: <String>["unfamiliar"],
            //checked: _checked,
            itemBuilder: (Checkbox cb, Text txt, int i) {
              return Column(
                children: <Widget>[cb],
              );
            },
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
          child: CheckboxGroup(
            orientation: GroupedButtonsOrientation.HORIZONTAL,
            margin: const EdgeInsets.only(left: 30.0),
            onSelected: (List selected) => setState(() {
              _checked = selected;
            }),
            labels: <String>["familiar"],
            //checked: _checked,
            itemBuilder: (Checkbox cb, Text txt, int i) {
              return Column(
                children: <Widget>[cb],
              );
            },
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
          child: CheckboxGroup(
            orientation: GroupedButtonsOrientation.HORIZONTAL,
            margin: const EdgeInsets.only(left: 20.0),
            onSelected: (List selected) => setState(() {
              _checked = selected;
            }),
            labels: <String>["expert"],
            //checked: _checked,
            itemBuilder: (Checkbox cb, Text txt, int i) {
              return Column(
                children: <Widget>[cb],
              );
            },
          ),
        ),
      ]),
    );

    Widget signup_button = Container(
        margin:
            EdgeInsets.only(left: 30.0, top: 40.0, right: 30.0, bottom: 0.0),
        width: 800,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.grey[800], borderRadius: BorderRadius.circular(10)),
        child: FlatButton(
          textColor: Colors.white,
          onPressed: () {},
          child: Text(
            "Sign Up",
            style: TextStyle(fontSize: 20.0),
          ),
        ));

    final leftSection = Container(
      margin: EdgeInsets.only(left: 120.0, top: 20.0, right: 0.0, bottom: 30.0),
      alignment: Alignment.bottomLeft,
      child: Text(
        "Skip  & ",
        textAlign: TextAlign.right,
        style: TextStyle(fontSize: 20, color: Colors.grey[800], fontWeight: FontWeight.w900),
      ),
    );

    final rightSection = Container(
        margin: EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0, bottom: 30.0),
        alignment: Alignment.bottomRight,
        child: FlatButton(
          textColor: Colors.yellow[700],
          onPressed: () {},
          child: Text("Sign Up",
              textAlign: TextAlign.left, style: TextStyle(fontSize: 20)),
        ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fly Fli',
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
                        topPart,
                        rankText,
                        checkTitles,
                        box_invest,
                        box_insurance,
                        box_taxes,
                        box_credit,
                        box_debit,
                        box_cards,
                        box_internet,
                        box_inflation,
                        box_retire,
                        signup_button,
                        Row(
                          children: [leftSection, rightSection],
                        )
                      ],
                    )),
              ),
            ),
            Container(
              height: 80,
              child: Row(
                children: [topPart],
              ),
              decoration: BoxDecoration(color: Colors.white),
            ),
          ]),
        ),
      ),
    );
  }
}
