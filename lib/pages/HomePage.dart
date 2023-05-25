import 'package:flutter/material.dart';
import 'package:portfolio/menu/drawerwidget.dart';




class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black,size: 40),
         backgroundColor: Colors.lime,

                 title: const Text('My Personal Resume',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontFamily: 'Pacifico',
                        fontWeight: FontWeight.bold
                 ),),


                 /*leading: IconButton(
                  onPressed: (){
                    setState(() {
                      Scaffold.of(context).openDrawer();
                    });
                  },
                   icon: Icon(Icons.menu,
                             color: Colors.black),
                ),*/


        ),
        drawer: MyDrawer(),
      backgroundColor: Colors.lime,
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
            children: [
              SizedBox(height: 80),
              Text(
                "Ikram Ben Dhiab",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.bold,
                  height: 2,
                ),),
              Text(
                "a Flutter Developer",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  height: 2,
                ),
              ),
              Text(
                "IT Master's Student at Higher Institue of Technological Studies of Sfax",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  height: 2,
                ),
              ),
            ],
            ),
            ),
        //color: Colors.white,
        width: 500,
        height: double.infinity,
            //padding: EdgeInsets.fromLTRB(20, 50, 20, 20), // ajout de l'espace intérieur
            margin: EdgeInsets.fromLTRB(20, 100, 20, 100), // ajout de l'espace extérieur
            alignment: Alignment.center,
      ),
          Container(
              margin: EdgeInsets.fromLTRB(120, 30, 50, 20),
              child: CircleAvatar(
                backgroundImage: AssetImage("images/img1.PNG"),
                radius: 60,
              )
          ),
        ])
    );
  }
}


