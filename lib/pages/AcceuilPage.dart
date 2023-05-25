import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/pages/AuthentificationPage.dart';
import 'package:portfolio/pages/HomePage.dart';

import 'AboutmePage.dart';


class AcceuilPage  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        //backgroundColor: Color(0xFF03A9F4),
        //backgroundColor: Colors.lime,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black, Colors.lime],
          ),
        ),
        child: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Container(
                child: Lottie.asset(
                  'images/writing-cv.json',

              ),
                //padding: EdgeInsets.fromLTRB(,10,20,10),
           /*child: Image(
            image: AssetImage('images/cv1.png'),
            height: 200,
            width:  200,
          ),*/
              ),
              SizedBox(height: 30),


           InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AuthentificationPage(),
                ),
              );
            },

             child: Text(
                 "Welcome To my Curriculum Vitae ",
                 textAlign: TextAlign.center,
                 style: TextStyle(
                   fontSize: 30,
                   color: Colors.black,
                   fontFamily: 'Pacifico',
                   fontWeight: FontWeight.bold,
                 )),
          ),
        ]
        )),
    )
    );
  }
}
/*
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';




class AcceuilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
        splash: Image.asset('images/cv1.png'),
        nextScreen: MyHomePage(),
        splashTransition: SplashTransition.scaleTransition,
        backgroundColor: Colors.lime,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lime,
      body: Center(
        child: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  Container(
                    //padding: EdgeInsets.fromLTRB(,10,20,10),
                    child: Image(
                      image: AssetImage('images/cv1.png'),
                      height: 200,
                      width:  200,
                    ),),
                  SizedBox(height: 30),


                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyHomePage(),
                        ),
                      );
                    },

                    child: Text(
                        "Welcome To my Curriculum Vitae ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 50,
                          color: Colors.black,
                          fontFamily: 'Pacifico',
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ]
            )),
      )

    );
  }
}

 */


