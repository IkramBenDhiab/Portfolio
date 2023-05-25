import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:portfolio/menu/drawerwidget.dart';
import 'package:percent_indicator/percent_indicator.dart';



class SkillsPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: MyDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.lime,size: 40),
        backgroundColor: Colors.black,
        title: Row(
        children: [
          Text('Skills',
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
              Icons.fact_check_outlined,color:Colors.lime,
              size: 36,
            ),
          ),
        ],
      ),
      ),
      body: Container(
       // width: 100,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.lime, Colors.white],
          ),
        ),
      child: Column(
          children: <Widget> [
            SizedBox(
              height:20,
            ),
          Row(
              children: <Widget> [
                 Column(
          children: <Widget> [
                CircularPercentIndicator(
                  animation: true,
                  animationDuration: 3000,
                  radius: 70,
                  lineWidth: 10,
                  percent:0.75,
                  progressColor: Colors.limeAccent,
                  backgroundColor: Colors.black12,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: Text('75%',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold)
                    ),
                ),
               // SizedBox(height: 65,),
                Text('Flutter',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                       // fontFamily: 'Pacifico',
                  fontWeight: FontWeight.bold,
                        height: 2)),
                 ]
                 ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget> [
                  LinearPercentIndicator(
                    width: 130,
                    animation: true,
                    animationDuration: 3000,
                    lineHeight: 20,
                    percent: 0.75,
                    linearStrokeCap: LinearStrokeCap.round,
                    center: Text("75%",
                        style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                ),
                    progressColor: Colors.limeAccent,
                    backgroundColor: Colors.black12,

                    trailing:  Text("Dart",style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),),
                  ),
                    SizedBox(height: 10),
                    LinearPercentIndicator(
                      width: 130,
                      animation: true,
                      animationDuration: 3000,
                      lineHeight: 20,
                      percent: 0.75,
                      linearStrokeCap: LinearStrokeCap.round,
                      center: Text("75%",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      progressColor: Colors.limeAccent,
                      backgroundColor: Colors.black12,

                      trailing:  Text("Firebase",style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),),
                    ),
                ]
                ),
              ]
          ),
            const Divider(),
            Row(
                children: <Widget> [
                  Column(
                      children: <Widget> [
                        CircularPercentIndicator(
                          animation: true,
                          animationDuration: 3000,
                          radius: 70,
                          lineWidth: 10,
                          percent:0.5,
                          progressColor: Colors.limeAccent,
                          backgroundColor: Colors.black12,
                          circularStrokeCap: CircularStrokeCap.round,
                          center: Text('50%',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontFamily: 'Pacifico',
                                  fontWeight: FontWeight.bold)
                          ),
                        ),
                        // SizedBox(height: 65,),
                        Text('Spring Boot',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                //fontFamily: 'Pacifico',
                                fontWeight: FontWeight.bold,
                                height: 2)),
                      ]
                  ),
                  SizedBox(width: 10),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget> [
                        LinearPercentIndicator(
                          width: 130,
                          animation: true,
                          animationDuration: 3000,
                          lineHeight: 20,
                          percent: 0.5,
                          linearStrokeCap: LinearStrokeCap.round,
                          center: Text("50%",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          progressColor: Colors.limeAccent,
                          backgroundColor: Colors.black12,

                          trailing:  Text("Java",style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(height: 10),
                        LinearPercentIndicator(
                          width: 130,
                          animation: true,
                          animationDuration: 3000,
                          lineHeight: 20,
                          percent: 0.5,
                          linearStrokeCap: LinearStrokeCap.round,
                          center: Text("50%",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          progressColor: Colors.limeAccent,
                          backgroundColor: Colors.black12,

                          trailing:  Text("SQL",style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),),
                        ),
                      ]
                  ),
                ]
            ),
            const Divider(),
            Row(
                children: <Widget> [
                  Column(
                      children: <Widget> [
                        CircularPercentIndicator(
                          animation: true,
                          animationDuration: 3000,
                          radius: 70,
                          lineWidth: 10,
                          percent:0.3,
                          progressColor: Colors.limeAccent,
                          backgroundColor: Colors.black12,
                          circularStrokeCap: CircularStrokeCap.round,
                          center: Text('30%',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontFamily: 'Pacifico',
                                  fontWeight: FontWeight.bold)
                          ),
                        ),
                        // SizedBox(height: 65,),
                        Text('Laravel',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                //fontFamily: 'Pacifico',
                                fontWeight: FontWeight.bold,
                                height: 2)),
                      ]
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget> [
                        LinearPercentIndicator(
                          width: 140,
                          animation: true,
                          animationDuration: 3000,
                          lineHeight: 20,
                          percent: 0.3,
                          linearStrokeCap: LinearStrokeCap.round,
                          center: Text("30%",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          progressColor: Colors.limeAccent,
                          backgroundColor: Colors.black12,

                          trailing:  Text("PHP",style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(height: 10),
                      ]
                  ),


                ]
            ),
      ]

    ),
    ),

    );
  }
}