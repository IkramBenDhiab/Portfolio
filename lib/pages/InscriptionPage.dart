import 'package:flutter/material.dart';
import'package:firebase_auth/firebase_auth.dart';
class InscriptionPage extends StatelessWidget {

  TextEditingController txt_login = new TextEditingController();
  TextEditingController txt_password = new TextEditingController();
  InscriptionPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.lime, size: 40),
          backgroundColor: Colors.black,
          title: Row(
            children: [
              Text(
                'Inscription Page ',
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
                      borderSide: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2), // Remplacez "Colors.blue" par la couleur de bordure souhaitée
                    borderRadius: BorderRadius.circular(10),
                  )
              )
          ),

        ),//NEW MODIFIED LIGNE 
        Container(
          padding: EdgeInsets.fromLTRB(20,10,20,20),
          child: TextFormField(
              controller: txt_password,
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password,color: Colors.black),
                  hintText: "Password",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1),
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
            padding: EdgeInsets.fromLTRB(100,10,100,10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  backgroundColor: (Colors.lime)),
              onPressed: () {
                _onInscrire(context);
              },
              child: Text("insciption", style: TextStyle (fontSize : 20,color: Colors.black)
              ),
            )
        ),
        TextButton(
          child: Text("j'ai deja un compte",
              style: TextStyle(fontSize: 18,color: Colors.lime)),
          onPressed: () {
            Navigator.pop(context);
            Navigator.pushNamed(context,'/Authentification');
          },
        ),
      ],

      ),),

    );
  }
  Future<void> _onInscrire(BuildContext context) async{
    SnackBar snackBar = SnackBar(content: Text(""));
    if (!txt_login.text.isEmpty && !txt_password.text.isEmpty){
      try{
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: txt_login.text.trim(),
            password: txt_password.text.trim());
        Navigator.pop(context);
        Navigator.pushNamed(context, '/Profile');
      }on FirebaseAuthException catch (e) {
        if(e.code == 'weak-password'){
          snackBar = SnackBar(
            content: Text('mot de passe faible'),
          );
        }else if (e.code == 'email-already-in-use'){
          snackBar = SnackBar(
            content: Text('Email deja existant'),
          );
        }
      }
    }
    else{
      snackBar = SnackBar(
        content: Text('Id mot de passe vides '),
      );
    }
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

}//end of the file


