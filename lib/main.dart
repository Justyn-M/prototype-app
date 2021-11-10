import 'dart:async';
import 'package:flutter/material.dart';
import 'package:prototype/screens/login/login_screen.dart';

var assetImage =
    AssetImage('assets/images/VanityLogoTransparentBackground.png');

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash',
      theme: ThemeData(primaryColor: Colors.black),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
//Made MyApp a Stateless Widget, no need createState because not a Stateful Widget
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();

//Created StatefulWidget for Timer
//Needed to createState because MyHomePage is a StatefulWidget
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen())));
//Timer for SplashPage
//'dart:async' imported for Timer
//After SplashPage, redirected to login UI
//'dart:Login_Screen' imported for transition to LoginScreen after Timer runs out
//If LoginScreen not popping up when running app, problem with login_screen.dart code
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      child: Image(
        image: assetImage,
      ),
    );
//SplashPage Contents
//SplashPage Background Color with image
  }
}
