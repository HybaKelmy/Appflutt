import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:argon_flutter/constants/Theme.dart';
import 'package:argon_flutter/screens/patient/question.dart';
import 'package:argon_flutter/screens/patient/rendezvous.dart';

//widgets
import 'package:argon_flutter/widgets/navbar.dart';

import 'drawer.dart';

// ignore: must_be_immutable
class ProfAdm extends StatelessWidget {
  String ValueChoose;

  List ListItem =[
    "Tunis","La Manouba","Ariana","Ben Arous","Le Kef","Bizerte","Gabes","Tozeur","Sousse","Médenine","Tataouine","Gafsa","Jendouba","Kairouan","Béja","Mahdia","Kasserine","Kébili","Monastir","Nabeul","Sfax","Sidi bouzid","Siliana","Zaghouan"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: Navbar(
          backButton: true,
          bgColor: Colors.lightBlue[400] ,
          title: ('Profil'),

        ),
        backgroundColor: ArgonColors.bgColorScreen,
        drawer: ArgonDrawer(currentPage: "ProfAdm"),
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
                "Dr. Salim Ettayeb is a cardiologist in Nashville & affiliated with multiple hospitals in the  area.He received his medical degree from Duke University School of Medicine and has been in practice for more than 20 years. ",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              SizedBox(
                height: 24,
              ),
               
              
          ])
        ),
    

        )
    );
  }
}



