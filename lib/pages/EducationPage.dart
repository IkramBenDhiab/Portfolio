import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/menu/drawerwidget.dart';

class EducationPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: MyDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.lime,size: 40),
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Text('Education',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.lime,
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 20),
            SizedBox(
              width: 32,
              height: 32,
              child: Icon(
                Icons.school_outlined,color:Colors.lime,
                size: 35,
              ),
            ),
          ],
        ),

      ),

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.lime, Colors.white],
          ),
        ),

        child: Center(
    child: Center(
    child: ListView(
    scrollDirection: Axis.vertical,
    children: [
      const SizedBox(
        height: 40.0,
      ),

      const SizedBox(
        height: 10.0,
      ),
       Container(
        height: 150,
        width: 30,
        child: ListTile(
          leading: const Icon(
            FontAwesomeIcons.graduationCap,
            color: Colors.lime,
          ),

          title: Text("Mastère :",
            style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.lime)),
          subtitle:   Padding(
        padding: EdgeInsets.only(top: 8),
               child: Column(
               children: [
                 Text(
                   "1 ère année mastère en développement de système"
                       "d'information et réseau | septembre 2022 - en cours",
                   style: GoogleFonts.roboto(
                       fontSize: 13,
                       fontWeight: FontWeight.bold,
                       color: Colors.white),
                 ),
                 Divider(),
                 Text(
                   "Institut Supérieur des Etudes Technologiques de Sfax (ISET)",
                   style:TextStyle(
                       fontSize: 12,
                       fontWeight: FontWeight.normal,
                       color: Colors.limeAccent),
                 ),]
        )
          )
        ),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      Divider(),
      Container(
        height: 170,
        width: 30,
        child: ListTile(
            leading: const Icon(
              FontAwesomeIcons.graduationCap,
              color: Colors.lime,
            ),

            title: Text("Licence :",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.lime)),
            subtitle:   Padding(
                padding: EdgeInsets.only(top: 8),
                child: Column(
                    children: [
                      Text(
                        "Computer engineering | septembre 2019 - juin 2022",
                        style: GoogleFonts.roboto(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Divider(),
                      Text(
                        "Spécialité IOT et Système embarquée",
                        style: GoogleFonts.roboto(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Divider(),
                      Text(
                        "Institut supérieur d'informatique Mahdia (ISIMA)",
                        style:TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Colors.limeAccent),
                      ),]
                )
            )
        ),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      Divider(),
      Container(
        height: 120,
        width: 30,
        child: ListTile(
            leading: const Icon(
              FontAwesomeIcons.graduationCap,
              color: Colors.lime,
            ),

            title: Text("Baccalauréat :",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.lime)),
            subtitle:   Padding(
                padding: EdgeInsets.only(top: 8),
                child: Column(
                    children: [
                      Text(
                        "sciences expérimentale , 2019",
                        style: GoogleFonts.roboto(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Divider(),
                      Text(
                        "Lycée secondaire du sahline",
                        style:TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Colors.limeAccent),
                      ),]
                )
            )
        ),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(25),
        ),
      ),

  ]
    ),
      ),
    ),
      ),
    );
  }
}