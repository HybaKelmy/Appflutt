import 'package:argon_flutter/screens/patient/Drawerpatient.dart';
import 'package:flutter/material.dart';

import 'package:argon_flutter/constants/Theme.dart';
import 'package:file_picker/file_picker.dart';
//widgets
import 'package:argon_flutter/widgets/navbar.dart';
import 'package:argon_flutter/widgets/input.dart';
import 'package:argon_flutter/widgets/table-cell.dart';

class Response extends StatefulWidget {
  @override
  _ElementsState createState() => _ElementsState();
}

class _ElementsState extends State<Response> {
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
          title: "Responses",
        ),
        backgroundColor: ArgonColors.bgColorScreen,
        drawer: PatientDrawer(currentPage: "Elements"),
        body: SingleChildScrollView(



            child: Padding(
              padding: EdgeInsets.only(top:1,right: 24, left: 24, bottom: 36),
              child: SafeArea(
                bottom: true,
                child: Column(children: [

                  Padding(
                    padding: const EdgeInsets.only(left: 1.0, top: 32),
                    child: Align(
                      alignment: Alignment.centerLeft,

                       child: Text("Response from ... ",
                          style: TextStyle(
                              color: ArgonColors.text,
                              fontWeight: FontWeight.w600,
                              fontSize: 16)),
                    ),
                  ),
                  // Container(),
                  // SizedBox(
                  //   height: 100,
                  //   width: 500,
                  //
                  //   child: Padding(
                  //         padding: EdgeInsets.all(16.0),
                  //
                  //
                  //     child: Input(
                  //       placeholder: "Write your question here!",
                  //     ),
                  //   ),
                  // ),
                

                  
                  
              
                  









                  

                ]),
              ),
            )));
  }
}