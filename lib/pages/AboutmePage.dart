import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/menu/drawerwidget.dart';
import 'package:flutter/gestures.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'mapPage.dart';

class AboutmePage extends StatefulWidget {

  @override
  _AboutmePageState createState() => _AboutmePageState();
}

class _AboutmePageState extends State<AboutmePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.lime, size: 40),
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Text(
              'About me',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                color: Colors.lime,
                fontFamily: 'Pacifico',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 20),
            SizedBox(
              width: 32,
              height: 32,
              child: Icon(
                Icons.person,
                color: Colors.lime,
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
       child: ListView(
           scrollDirection: Axis.vertical,
        children: [
      const SizedBox(
       height: 10.0,
          ),
         Center(
         child: Text(
          'Ikram Ben Dhiab',
             style: TextStyle(
               fontSize: 30,
               fontWeight: FontWeight.bold,
               fontFamily: 'Pacifico',
               color: Colors.black),
         )),
          const SizedBox(
            height: 10.0,
          ),
          GestureDetector(
            onTap: () async {
              final Uri params = Uri(
                scheme: 'mailto',
                path: 'ikram.bendhieb2019@gmail.com',
              );
              String url = params.toString();
              await launch(url);
              },
            child: Container(
              height: 70,
              width: 30,
              child: ListTile(
                leading: const Icon(
                  Icons.email,
                  color: Colors.lime,
                ),

                title: Text("Email",
                    style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.lime)),
                subtitle: Text(
                  "ikram.bendhieb2019@gmail.com",
                  style: GoogleFonts.roboto(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
          const Divider(),
          GestureDetector(
            onTap: () async {
              final Uri params = Uri(
                scheme: 'tel',
                path: '+21642231632',
              );
              String url = params.toString();
              await launch(url);
              },
            child: Container(
              height: 70,
              width: 50,
              child: ListTile(
                leading: const Icon(
                  Icons.phone_android,
                  color: Colors.lime,
                ),
                title: Text("Phone Number",
                    style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.lime)),
                subtitle: Text('+216 42 231 632',
                    style: GoogleFonts.roboto(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
          const Divider(),
          GestureDetector(
            onTap: () async {
              String address = 'sahline, monastir'; // Remplacez par votre adresse

              String googleMapsUrl = 'https://www.google.com/maps/search/?api=1&query=$address';
              if (await canLaunch(googleMapsUrl)) {
                await launch(googleMapsUrl);
              } else {
                throw 'Impossible de lancer Google Maps';
              }
            },
            child: Container(
              height: 70,
              width: 50,
              child: ListTile(
                leading: const Icon(
                  Icons.location_city,
                  color: Colors.lime,
                ),
                title: Text(
                  "City",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.lime,
                  ),
                ),
                subtitle: Text(
                  'Ali Belhween, 5012',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
          const Divider(),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MapPage()),
              );
            },
            child: Container(
              height: 70,
              width: 50,
              child: ListTile(
                leading: const Icon(
                  Icons.location_on_outlined,
                  color: Colors.lime,
                ),
                title: Text(
                  "Location",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.lime,
                  ),
                ),
                subtitle: Text(
                  'route mahdia , Sfax',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),


          const Divider(),
      GestureDetector(
        onTap: () async {
          var url =
              "https://www.linkedin.com/in/ikram-ben-dhieb-9672041b1/";
          await launch(url);
        },
        child: Container(
        height: 70,
        width: 30,
        child: ListTile(
          leading: const Icon(
            FontAwesomeIcons.linkedin,
            color: Colors.lime,
          ),

          title: Text("LinkedIn",
              style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.lime)),
          subtitle: Text(
            "Ikram Ben Dhiab",
            style: GoogleFonts.roboto(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    ),

          const Divider(),
          GestureDetector(
            onTap: () async {
              var url =
                  "https://www.facebook.com/ikram.bendheib.5?mibextid=ZbWKwL";
              await launch(url);
            },
            child: Container(
              height: 70,
              width: 30,
              child: ListTile(
                leading: const Icon(
                  FontAwesomeIcons.facebook,
                  color: Colors.lime,
                ),

                title: Text("Facebook",
                    style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.lime)),
                subtitle: Text(
                  "Ikram Ben Dhiab",
                  style: GoogleFonts.roboto(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
          const Divider(),
          Container(
            height: 70,
            width: 50,
            child: ListTile(
              leading: const Icon(
                Icons.date_range,
                color: Colors.lime,
              ),
              title: Text("Birthday",

                  style: GoogleFonts.roboto(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.lime)),
              subtitle: Text('30-08-2000',
                  style: GoogleFonts.roboto(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ],
       ),
    ),
      ),
    );
  }
}
