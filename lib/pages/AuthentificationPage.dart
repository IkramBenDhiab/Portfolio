import 'package:flutter/material.dart';
import'package:firebase_auth/firebase_auth.dart';

class AuthentificationPage extends StatelessWidget {

  TextEditingController txt_login = new TextEditingController();
  TextEditingController txt_password = new TextEditingController();
  AuthentificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.lime, size: 40),
          backgroundColor: Colors.black,
          title: Row(
            children: [
              Text(
                'Page Authentification',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
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
          height: 650,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.lime, Colors.black],
            ),
          ),

        child: Column (
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20,80,20,20),
              child: TextFormField(
                  controller: txt_login,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person,color: Colors.black),
                      hintText: "Utilsateur",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2), // Remplacez "Colors.blue" par la couleur de bordure souhaitée
                        borderRadius: BorderRadius.circular(10),
                      )
                  )
              ),

            ),
            Container(
              padding: EdgeInsets.fromLTRB(20,10,20,20),
              child: TextFormField(
                  controller: txt_password,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password,color: Colors.black,),
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                          borderRadius: BorderRadius.circular(10)
                      ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2), // Remplacez "Colors.blue" par la couleur de bordure souhaitée
                      borderRadius: BorderRadius.circular(10),
                  ),
              ),

            ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(100,10,100,10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                  backgroundColor: (Colors.lime),),
                onPressed: () {
                  _onAuthentifier(context);
                },
                child: Text("connexion", style: TextStyle (fontSize : 20, color: Colors.black )
                ),
              ),

            ),
            TextButton(
              child: Text("Nouvel Utilisateur ",
                  style: TextStyle(fontSize: 18,color: Colors.lime)),
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushNamed(context,'/Inscription');
              },
            ),
          ],

        ),)
    );
  }
  Future<void> _onAuthentifier(BuildContext context) async{
    SnackBar snackBar = SnackBar(content: Text(""));
    if (!txt_login.text.isEmpty  && !txt_password.text.isEmpty){
      try{
       //final credential =
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: txt_login.text.trim(),
          password: txt_password.text.trim());
        Navigator.pop(context);
        Navigator.pushNamed(context, '/Profile');
      }on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found'){
          snackBar =SnackBar(
            content: Text('Verifier votre mot de passe'),
          );
        }
      }catch(e){
        print(e);
      }
    }
    else{

      snackBar = SnackBar(
        content: Text('Verifier votre Id ou mot de passe  '),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
