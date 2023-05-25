import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/config/GlobalParams.dart';

class MyDrawer extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
        child: ListView(
          children: [
            SizedBox(
                height: 240,
                child: DrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient (colors: [Colors.black, Colors.lime]
                    )
                ),
                child: Center(
                  child: Column(
                    children: [
                      Spacer(flex: 5),
                     CircleAvatar(
                      backgroundImage: AssetImage("images/img1.PNG"),
                      //backgroundColor: Colors.lime,
                      radius: 60,
                    ),
                      Spacer(flex: 5),
                     Text(
                       "Ikram Ben Dhiab",
                         textAlign: TextAlign.center,
                         style: TextStyle(
                             fontSize: 23,
                             color: Colors.white,
                             fontFamily: 'Pacifico',
                             fontWeight: FontWeight.bold,

                     ),),
                      Text(
                        "a Flutter Developer",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          height: 1.5,
                        ),
                      ),
                ]),
                )),),

            SizedBox(height: 10),
    //Parcourir les differentes elements du menu
            ...(GlobalParams.menus as List).map((item){
              return ListTile(
                title: Text('${item['title']}',style: TextStyle(fontSize: 17,color: Colors.lime,)),
                leading: item['icon'],
                trailing: Icon(Icons.arrow_right,color: Colors.lime),
                onTap: () async{
                  if ('${item['title']}'!="Déconnexion"){
                    Navigator.of(context).pop();
                    Navigator.pushNamed(context, "${item['route']}");
                  }
                  else{
                    FirebaseAuth.instance.signOut();
                    Navigator.of(context).pushNamedAndRemoveUntil('/Authentification', (Route<dynamic> route) => false);
                  }
                },
              );
            }
            )],
        )
    );
  }
}