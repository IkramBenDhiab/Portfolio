/*import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/pages/HomePage.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        cardColor:Colors.greenAccent,
      ),
      home: const Splashscreen(),
    );
  }
}
class Splashscreen extends StatelessWidget {
  const Splashscreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash:
      Lottie.asset('images/cv1.png'),
      backgroundColor: Colors.purpleAccent,
      nextScreen: const HomePage(),
      splashIconSize: 400,
      duration: 4000,
      splashTransition: SplashTransition.fadeTransition,
      animationDuration: const Duration(seconds:1 ),
    );
  }
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Splashscreen"),backgroundColor: Colors.purpleAccent,),
      body:Center(child: Text("Welcome Home",
        style: TextStyle(color: Colors.black,fontSize: 22),)),);
  }
}
*/
