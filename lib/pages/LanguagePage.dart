import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:portfolio/menu/drawerwidget.dart';

class LanguagePage extends StatelessWidget {


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
            Text('Language',
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
                Icons.language,color:Colors.lime,
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
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget> [
                      SizedBox(height: 100),
                      LinearPercentIndicator(
                        width: 250,
                        animation: true,
                        animationDuration: 3000,
                        lineHeight: 30,
                        percent: 1,
                        linearStrokeCap: LinearStrokeCap.round,
                        center: Text("100%",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        progressColor: Colors.white,
                        backgroundColor: Colors.black12,

                        trailing:  Text("Arabic",style: TextStyle(
                            fontSize:18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 50),
                      LinearPercentIndicator(
                        width: 250,
                        animation: true,
                        animationDuration: 3000,
                        lineHeight: 30,
                        percent: 0.8,
                        linearStrokeCap: LinearStrokeCap.round,
                        center: Text("80%",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        progressColor: Colors.white,
                        backgroundColor: Colors.black12,

                        trailing:  Text("French",style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 50),
                      LinearPercentIndicator(
                        width: 250,
                        animation: true,
                        animationDuration: 3000,
                        lineHeight: 30,
                        percent: 0.6,
                        linearStrokeCap: LinearStrokeCap.round,
                        center: Text("50%",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        progressColor: Colors.white,
                        backgroundColor: Colors.black12,

                        trailing:  Text("English",style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),),
                      ),

                    ]
                ),

    ),
                //color: Colors.white,
                width: 500,
                height: double.infinity,
                //padding: EdgeInsets.fromLTRB(20, 50, 20, 20), // ajout de l'espace intérieur
                margin: EdgeInsets.fromLTRB(20, 100, 20, 100), // ajout de l'espace extérieur
                alignment: Alignment.center,
              ),



            ])
    );
  }
}