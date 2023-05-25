import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:portfolio/menu/drawerwidget.dart';

class MyProjectsPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lime,
      drawer: MyDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.lime,size: 40),
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Text('My Projects',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.lime,
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 20),
            SizedBox(
              width: 32,
              height: 32,
              child: Icon(
                Icons.assignment_outlined,color:Colors.lime,
                size: 35,
              ),
            ),
          ],
        ),
      ),
        body: Center(
                  child: Column(
                children: <Widget>[
                  SizedBox(height: 100),
                    Container(
                      height:210,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow:[
                          BoxShadow(
                              color: Colors.white,
                              spreadRadius: 1,
                              blurRadius: 8,
                              offset: Offset(4,4)),
                          BoxShadow(
                              color: Colors.black,
                              spreadRadius: 2,
                              blurRadius:20,
                              offset: Offset(-4,-4))],
                      ),

                      child:Column(
                      children: <Widget>[
                        Row(
                          children: [
                            SizedBox(width: 7),
                            Text("Application Mobile:",style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              height: 2,
                            ),),
                            SizedBox(width: 10),
                            Text("gestion des étudiants",style: TextStyle(
                              fontSize: 15,
                              color: Colors.lime,
                              fontWeight: FontWeight.bold,
                              height: 2,
                            )),
                          ]
                        ),
                        Center(
                         child: Padding(
                          padding: EdgeInsets.only(left: 20),
                         child: Column(
                           children: [
                             SizedBox(height: 10,width: 5),
                             Text("il s'agit d'une application mobile qui permet de gérer les étudiants c'est à dire d'insérer le nom de l'étudiant etsa classe et après afficher la liste des étudiants ajoutés àchaque fois",
                               style:TextStyle(
                               fontSize: 13,
                               color: Colors.black,
                               fontWeight: FontWeight.bold,
                               height: 2,
                             ),
                             ),
                             Text("technologies : Android , java",
                               style:TextStyle(
                               fontSize: 15,
                               color: Colors.lime,
                               fontWeight: FontWeight.bold,
                               height: 2,
                             ),),
                           ]
                         ))
                        )
                      ]
                    )
                    ),
                  SizedBox(height: 25),
                  Container(
                      height:230,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow:[
                          BoxShadow(
                              color: Colors.white,
                              spreadRadius: 1,
                              blurRadius: 8,
                              offset: Offset(4,4)),
                          BoxShadow(
                              color: Colors.black,
                              spreadRadius: 2,
                              blurRadius:20,
                              offset: Offset(-4,-4))],
                      ),

                      child:Column(
                          children: <Widget>[
                            Row(
                                children: [
                                  SizedBox(width: 30),
                                  Text("Titre du projet :",style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    height: 2,
                                  ),),
                                  SizedBox(width: 20),
                                  Text("Smart House",style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.lime,
                                    fontWeight: FontWeight.bold,
                                    height: 2,
                                  )),
                                ]
                            ),
                            Center(
                              child: Padding(
                               padding: EdgeInsets.only(left: 20),
                                child: Column(
                                    children: [
                                      SizedBox(height: 10,width: 5),
                                      Text("Réalisation d'une solution IoT pour contrôler le mouvement d'un enfant dans sa maison par sa mère enl'envoyant un message d'assurance à son état .",
                                        style:TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          height: 2,
                                        ),
                                      ),
                                      Text("Microcontroleur : Esp32",
                                        style:TextStyle(
                                          fontSize: 15,
                                          color: Colors.lime,
                                          fontWeight: FontWeight.bold,
                                          height: 2,
                                        ),),
                                    ]
                                )
                              )
                            )
                          ]
                      )
                  ),
                    ]
                  ),
                ),
                //color: Colors.white,


    );
  }
}