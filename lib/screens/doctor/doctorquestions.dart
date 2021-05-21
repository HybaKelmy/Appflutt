import 'package:flutter/material.dart';

import 'package:argon_flutter/constants/Theme.dart';

//widgets
import 'package:argon_flutter/widgets/navbar.dart';

import 'drawer.dart';

class Newquest extends StatefulWidget {
  @override
  _NewquestState createState() => _NewquestState();
}

class _NewquestState extends State<Newquest> {
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
          title: "Questions",
        ),
        backgroundColor: ArgonColors.bgColorScreen,
        drawer: ArgonDrawer(currentPage: "Newquest"),
        body: ListView(
          children: <Widget>[
              Container(
             width: 100,
             height: 40,
            ),
            Container(
             width: 100,
             height: 120,
             
              child: Card(
                margin: EdgeInsets.fromLTRB(40.0, 5.0, 40.0, 5.0),
                color: Colors.lightBlue[400],
                
                 child: Column(children: <Widget>[
                  
                  Text('Hyba',
                  style: TextStyle(
                  fontSize: 18.0,
                   color: Colors.white,
                  fontWeight: FontWeight.bold,
                   )),
                     Container(
              width: 100,
             height: 15,),
                   Text('Bonjour, le médicament "***" que vous m\'avez donné m\'a causé la vertige, est-ce que c\'est normal ? ',
                  style: TextStyle(
                  fontSize: 12.0,
                   color: Colors.white,
                
                   )),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("",
                          style: TextStyle(
                              color: ArgonColors.text,
                              fontWeight: FontWeight.w600,
                              fontSize: 16)),
                    ),
                  ),
                   ]),
              ),
            
              
              
            ),
             Container(
              width: 100,
             height: 10,),
            Container(
              width: 100,
             height: 120,
             
               child: Padding(

                padding: EdgeInsets.only(right: 24, left: 24, bottom: 10),
                child: SafeArea(
                  bottom: true,
                  child: Column(children: [
                    TextFormField(decoration: const InputDecoration(
                      labelText: 'The Answer',
                      hintText: 'Answer the question',
                      border: OutlineInputBorder()),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Veuillez saisir un texte';
                      }
                      return null;
                    },),
                    SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding:
                      const EdgeInsets.only(left: 200.0, right: 5.0,),
                      child: RaisedButton(
                        textColor: ArgonColors.white,
                        color: Colors.lightBlue[400],

                        onPressed: () {
                          // Respond to button press
                          Navigator.pushReplacementNamed(context, '/profadmin');
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: 8.0, right: 8.0, top: 12, bottom: 12),
                            child: Text("Answer ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 14.0, color: Colors.white))),
                      ),
                    ),
                  ),





               ]))
            
            
          )
         )]) );
  }
}

