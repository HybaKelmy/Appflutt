import 'package:argon_flutter/components/schedule_card.dart';
import 'package:argon_flutter/constant.dart';
import 'package:argon_flutter/constants/Theme.dart';
import 'package:argon_flutter/screens/patient/question.dart';
import 'package:argon_flutter/screens/patient/rendezvous.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'DateTimePicker.dart';
import 'home_screen_patient.dart';


// ignore: must_be_immutable
class Asma extends StatelessWidget {
  var _description;
  var _imageUrl;

  Asma(this._description, this._imageUrl, imageUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(
            color: Colors.black87
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset("assets/images/doctor11.jpg", height: 170),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 222,
                    height: 210,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Dr. Salim Ettayeb",
                          style: TextStyle(fontSize: 32),
                        ),
                        Text(
                          "Heart Speailist",
                          style: TextStyle(fontSize: 19, color: Colors.grey),
                        ),
                    SizedBox(
                      height: 15,
                    ),
                        Container(
                          height: 35,
                          width: 1000,
                          margin: EdgeInsets.all(0),
                          // ignore: deprecated_member_use
                          child: FlatButton(
                            child: Text('Rendez-vous', style: TextStyle(fontSize: 13.0),),
                            color: Colors.lightBlue,
                            textColor: Colors.white,
                            onPressed: () {
                              Navigator.push(context, new MaterialPageRoute(
                                  builder: (context) => new RendezVous()),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Container(
                          height: 35,
                          width: 1000,
                          margin: EdgeInsets.all(0),
                          // ignore: deprecated_member_use
                          child: FlatButton(
                            child: Text('Question', style: TextStyle(fontSize: 13.0),),
                            color: Colors.lightBlue,
                            textColor: Colors.white,
                            onPressed: () {
                              Navigator.push(context, new MaterialPageRoute(
                                  builder: (context) => new Question())
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),


              Text(
                "About",
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(
                height: 36,
              ),
              Text(
                "Dr. Salim Ettayeb is a Generalist in Ariana . ",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Image.asset("assets/mappin.png"),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Address",
                                style: TextStyle(
                                    color: Colors.black87.withOpacity(0.7),
                                    fontSize: 20),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width - 268,
                                  child: Text(
                                    "Rue la Mer Rouge, Ariana Supérieur, Ariana 2080",
                                    style: TextStyle(color: Colors.grey),
                                  ))
                            ],
                          ),
                           SizedBox(
                            width: 50,
                          ),
                          Column(
                        children: <Widget>[
                          Image.asset("assets/clock.png"),
                          SizedBox(
                            width: 40,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Daily Practict",
                                style: TextStyle(
                                    color: Colors.black87.withOpacity(0.7),
                                    fontSize: 20),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width - 268,
                                  child: Text(
                                    '''Monday - Friday
Open till 7 Pm''',
                                    style: TextStyle(color: Colors.grey),
                                  ))
                            ],
                          )
                        ],
                      )
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      
                    ],
                  ),
                  
                ],
              ),
              Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Image.asset(
                    "assets/map.png",
                    width: 180,
                  )
                              
                            ],
                          ),
              
             
             
            ],
          ),
        ),
      ),
    );
  }}