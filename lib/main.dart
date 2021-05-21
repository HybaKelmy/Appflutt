import 'package:argon_flutter/screens/DateTimePicker.dart';

import 'package:argon_flutter/screens/directory.dart';
import 'package:argon_flutter/screens/doctor/homedoctor.dart';
import 'package:argon_flutter/screens/doctor/newpatient.dart';
import 'package:argon_flutter/screens/home_screen_patient.dart';
import 'package:argon_flutter/screens/onboarding_screen.dart';
import 'package:argon_flutter/screens/Patient.dart';
import 'package:argon_flutter/screens/patient/question.dart';
import 'package:argon_flutter/screens/patient/rendezvous.dart';
import 'package:argon_flutter/screens/patient/response.dart';
import 'package:argon_flutter/screens/secretairee/homesecretaire.dart';
import 'package:argon_flutter/widgets/onBoarding.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// screens
// import 'package:argon_flutter/screens/onboarding.dart';
import 'package:argon_flutter/screens/pro.dart';
import 'package:argon_flutter/screens/login-patient.dart';
import 'package:argon_flutter/screens/SignUpPatient.dart';
import 'package:argon_flutter/screens/register.dart';

import 'package:argon_flutter/screens/articles.dart';
import 'package:argon_flutter/screens/elements.dart';

import 'package:argon_flutter/screens/detail_screen.dart';
import 'package:argon_flutter/components/doctor_card.dart';
import 'package:argon_flutter/components/category_card.dart';

import 'screens/doctor/addappoint.dart';
import 'screens/doctor/addcontact.dart';
import 'screens/doctor/adddossier.dart';
import 'screens/doctor/appoinements.dart';
import 'screens/doctor/archive.dart';
import 'screens/doctor/cabineexp.dart';
import 'screens/doctor/dailyrecip.dart';
import 'screens/doctor/doctorquestions.dart';
import 'screens/doctor/finance.dart';
import 'screens/doctor/listingconsult.dart';
import 'screens/doctor/listingmedfold.dart';
import 'screens/doctor/listingpatient.dart';
import 'screens/doctor/medicalfolder.dart';
import 'screens/doctor/modifieinfosprof.dart';
import 'screens/doctor/newconsult.dart';
import 'screens/doctor/profadmin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'App Care Flutter',
        theme: ThemeData(fontFamily: 'OpenSans'),
        initialRoute: "/onBoarding",
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          "/onBoarding": (BuildContext context) => new Onboarding(),
          // "/user": (BuildContext context) => new User(),
          "/articles": (BuildContext context) => new Articles(),
          "/elements": (BuildContext context) => new Elements(),
          "/account": (BuildContext context) => new Register(),
          "/pro": (BuildContext context) => new Pro(),
          "/question": (BuildContext context) => new Question(),
          "/home_screen_patient": (BuildContext context) => new HomeScreenPatient(),
          "/rendezvous": (BuildContext context) => new RendezVous(),
          "/DateTimePicker": (BuildContext context) => new DateTimePicker(),


              // widgets doctor
           "/newpatient": (BuildContext context) => new NewPatient(),

          "/listingpat": (BuildContext context) => new Listpat(),
          "/addappoint": (BuildContext context) => new Addappoint(),
          // ignore: equal_keys_in_map
          "/account": (BuildContext context) => new Appoint(),
          // ignore: equal_keys_in_map
          "/homedoctor": (BuildContext context) => new DoctorHome(),
          "/newconsult": (BuildContext context) => new NewConsult(),
          "/listingconsult": (BuildContext context) => new ListConsult(),
          "/questions": (BuildContext context) => new Newquest(),
          "/directory": (BuildContext context) => new Direc(),
          "/finance": (BuildContext context) => new Fin(),
          "/archive": (BuildContext context) => new Arch(),
          "/profadmin": (BuildContext context) => new ProfAdm(),
          "/modifierinfosprof": (BuildContext context) => new Modifyinf(),
          "/addcontact": (BuildContext context) => new Addcont(),
          "/listingmedfold": (BuildContext context) => new Medfold(),
          "/response": (BuildContext context) => new Response(),
          "/medicalfolder": (BuildContext context) => new Folder(),
          "/adddossier": (BuildContext context) => new Adddoss(),
          "/dailyrecip": (BuildContext context) => new Daily(),
          "/cabinetexp": (BuildContext context) => new Cabex(),
          

              // widget secretaire

              "/homesecretaire": (BuildContext context) => new SecretaireHome(),

        });
  }
}
