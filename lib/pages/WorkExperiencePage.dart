import 'package:flutter/material.dart';
import 'package:portfolio/menu/drawerwidget.dart';

class WorkExperiencePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      drawer: MyDrawer(),
      //backgroundColor: Colors.lime,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.lime,size: 40),
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Text('Work Experience',
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
                Icons.work_history_outlined,color:Colors.lime,
                size: 35,
              ),
            ),
          ],
        ),
      ),
      body: Stack(
          children: <Widget>[
            Container(

              decoration: BoxDecoration(
                //color: Colors.lime,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.lime, Colors.black],
                ),
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
              child: Center(
                child: Column(
                    children: <Widget>[
                      //SizedBox(height: 70),
                      Column(
                              children: <Widget>[
                                Row(
                                    children: [
                                      SizedBox(width: 7),
                                      Text("Stage : Projet de fin d'études",style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        height: 2,
                                      ),)
                                    ]
                                ),
                                Row(
                                    children: [
                                      SizedBox(width: 7),
                                      Text("De février 2022 jusqu'à juin 2022",style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        height: 2,
                                      ),)
                                    ]
                                ),
                                Row(
                                    children: [
                                      SizedBox(width: 7),
                                      Text("LEONI",style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.indigo,
                                        fontWeight: FontWeight.bold,
                                        height: 2,
                                      ),)
                                    ]
                                ),
                                Row(
                                    children: [
                                      SizedBox(width: 7),
                                      Text("Titre du projet :",style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        height: 2,
                                      ),),
                                      SizedBox(width: 10),
                                      Text("Smart Building",style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
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
                                          SizedBox(height: 5,width: 5),
                                          Text("création d'une application mobile pour gérer un smart building à distance dont l'objectif du Green Energy :"
                                              "commander un climatiseur à distance vial'application mobile*commander des lampes à distances via uneapplication mobile ."
                                              "et conception et réalisation de carte électronique.",
                                            style:TextStyle(
                                              fontSize: 12,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              height: 2,
                                            ),
                                          ),
                                          Text("technologies : Flutter ,Dart , C , Arduino , esp32 ,Firebase,MQTTmatériels : esp32 , capteur infrarouge émetteur etrécepteur , capteur LM35",
                                            style:TextStyle(
                                              fontSize: 12,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              height: 2,
                                            ),),
                                        ]
                                    )
                                )
                                )
                              ]
                          )

                    ]
                ),
              ),
              //color: Colors.white,
              width: 600,
              height: double.infinity,
              //padding: EdgeInsets.fromLTRB(20, 50, 20, 20), // ajout de l'espace intérieur
              margin: EdgeInsets.fromLTRB(20, 80, 20, 70), // ajout de l'espace extérieur
              alignment: Alignment.center,
            ),
          ]),
    );
  }
}