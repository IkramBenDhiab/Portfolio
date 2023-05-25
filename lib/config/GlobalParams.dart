import 'package:flutter/material.dart';
class GlobalParams{
  static List<Map<String,dynamic>>menus=[
    {"title": "Profil","icon":Icon(Icons.account_circle,color:Colors.lime),"route":"/Profile"},
    {"title": "About me","icon":Icon(Icons.person,color:Colors.lime),"route":"/About me"},
    {"title": "Education","icon":Icon(Icons.school_outlined,color:Colors.lime),"route":"/Education"},
    {"title": "Work Experience","icon":Icon(Icons.work_history_outlined,color:Colors.lime),"route":"/Work Experience"},
    {"title": "Certifications","icon":Icon(Icons.verified_outlined,color:Colors.lime),"route":"/Certifications"},
    {"title": "Skills","icon":Icon(Icons.fact_check_outlined,color:Colors.lime),"route":"/Skills"},
    {"title": "Language ","icon":Icon(Icons.language,color:Colors.lime),"route":"/Language"},
    {"title": "My projects","icon":Icon(Icons.assignment_outlined,color:Colors.lime),"route":"/My projects"},
    {"title": "Any Question","icon":Icon(Icons.question_answer_outlined,color:Colors.lime),"route":"/Any Question"},
    {"title": "Déconnexion","icon":Icon(Icons.logout,color:Colors.lime),"route":"/Authentification"},

  ];
}