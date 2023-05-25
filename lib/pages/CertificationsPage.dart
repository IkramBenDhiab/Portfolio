import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/menu/drawerwidget.dart';

class CertificationsPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.lime,size: 40),
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Text('Certifications',
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
                Icons.verified_outlined,color:Colors.lime,
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
                    height: 140.0,
                  ),
                  Container(
                    height: 100,
                    width: 30,
                    child: ListTile(
                        leading: const Icon(
                          FontAwesomeIcons.html5,
                          color: Colors.lime,
                          size: 35,
                        ),

                        title: Text("+ certificat html",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Pacifico',
                                color: Colors.lime)),
                        subtitle:   Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Column(
                                children: [
                                  Text(
                                    "- study.tn",
                                    style: GoogleFonts.roboto(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  ]
                        )
                    ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  Divider(),
                  Container(
                    height: 100,
                    width: 30,
                    child: ListTile(
                      leading: const Icon(
                        FontAwesomeIcons.robot,
                        color: Colors.lime,
                        size: 35,
                      ),

                      title: Text("+ certificat Robotics",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Pacifico',
                              color: Colors.lime)),
                      subtitle:   Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Column(
                              children: [
                                Text(
                                  "- study.tn",
                                  style: GoogleFonts.roboto(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ]
                          )
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  Divider(),
                  Container(
                    height: 130,
                    width: 30,
                    child: ListTile(
                      leading: const Icon(
                        FontAwesomeIcons.networkWired,
                        color: Colors.lime,
                        size:35,
                      ),

                      title: Text("+ certificat CCNA3",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Pacifico',
                              color: Colors.lime)),
                      subtitle:   Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Column(
                              children: [
                                Text(
                                  "Enterprise Networking, Security, and Automation",
                                  style: GoogleFonts.roboto(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  " - Cisco",
                                  style: GoogleFonts.roboto(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ]
                          )
                      ),
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