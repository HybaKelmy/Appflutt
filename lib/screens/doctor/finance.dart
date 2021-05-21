import 'package:flutter/material.dart';

import 'package:argon_flutter/constants/Theme.dart';

//widgets
import 'package:argon_flutter/widgets/navbar.dart';

import 'drawer.dart';


class Fin extends StatefulWidget {
  @override
  _FinState createState() => _FinState();
}

class _FinState extends State<Fin> {
  bool switchValueOne;
  bool switchValueTwo;

  void initState() {
    setState(() {
      switchValueOne = true;
      switchValueTwo = false;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Navbar(
          backButton: true,
          bgColor: Colors.lightBlue[400],
          title: "Financial accounting",
          categoryOne: "Daily recipe",
          categoryTwo: "Cabinet expenses",

        ),
        backgroundColor: ArgonColors.bgColorScreen,
        drawer: ArgonDrawer(currentPage: "Fin"),
        body: ListView(
          children: <Widget>[
              Container(
             width: 100,
             height: 30,
            ),
            Container(
             width: 100,
             height: 130,
             
              child: Card(
                margin: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 10.0),
                color: Colors.lightBlue[400],
                
                 child: Column(children: <Widget>[
      Text('Today Expenses',
      style: TextStyle(
        fontSize: 18.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      )),
      
      
      SizedBox(height: 30.0),
      Text(
        '0 dt',
        style: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
      )
    ],),
              ),
              
            ),
             Container(
             width: 100,
             height: 30
            ),
            Container(
             width: 100,
             height: 130,
             
              child: Card(
                margin: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 10.0),
                color: Colors.lightBlue[400],
                
                 child: Column(children: <Widget>[
      Text('Today Incomes',
      style: TextStyle(
        fontSize: 18.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      )),
      
      
      SizedBox(height: 30.0),
      Text(
        '0 dt',
        style: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
      )
    ],),
              ),
              
            ),
            Container(
             width: 100,
             height: 30
            ),
           Container(
             width: 100,
             height: 130,
             
              child: Card(
                margin: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 10.0),
                color: Colors.lightBlue[400],
                
                 child: Column(children: <Widget>[
      Text('Today Balance',
      style: TextStyle(
        fontSize: 18.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      )),
      
      
      SizedBox(height: 30.0),
      Text(
        '0 dt',
        style: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
      )
    ],),
              ),
              
            ),
          ],
        )
        
        );
  }
}

