import 'package:flutter/material.dart';
import 'package:portfolio/pages/AboutmePage.dart';
import 'package:portfolio/pages/AcceuilPage.dart';
import 'package:portfolio/pages/Animated_Splash_Screen.dart';
import 'package:portfolio/pages/AuthentificationPage.dart';
import 'package:portfolio/pages/CertificationsPage.dart';
import 'package:portfolio/pages/EducationPage.dart';
import 'package:portfolio/pages/HomePage.dart';
import 'package:portfolio/pages/InscriptionPage.dart';
import 'package:portfolio/pages/LanguagePage.dart';
import 'package:portfolio/pages/MyProjectsPage.dart';
import 'package:portfolio/pages/SkillsPage.dart';
import 'package:portfolio/pages/WorkExperiencePage.dart';
import'package:firebase_core/firebase_core.dart';
import'package:firebase_auth/firebase_auth.dart';
import 'package:portfolio/pages/chat_screen.dart';
import 'package:portfolio/pages/mapPage.dart';
import 'config/GlobalParams.dart';
import'firebase_options.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());

}

class MyApp extends StatelessWidget {

  final routes = {

    "/Profile" : (context) => HomePage(),
    "/Inscription" : (context) => InscriptionPage(),
    "/Authentification" : (context) => AuthentificationPage(),
    "/About me" : (context) => AboutmePage(),
    "/Education" : (context) => EducationPage(),
    "/Work Experience" : (context) => WorkExperiencePage(),
    "/Certifications" : (context) => CertificationsPage(),
    "/Skills" : (context) => SkillsPage(),
    "/Language" : (context) =>LanguagePage(),
    "/My projects" : (context) => MyProjectsPage(),
    "/Any Question" : (context) => ChatGPTScreen(),

  };
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      home :  AcceuilPage()
      ,
      //theme: ThemeData(backgroundColor: Color(0xFFF57F17),),
    );

  }
}

