import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:prototype/screens/home/homescreen.dart';
import 'dart:ui';
import 'package:prototype/utilities/ultconts.dart';

//UI is copy and pasted hence lesser annotations,

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}
//created Onboarding Screen as a StatefulWidget, because it is a stateful widget, need to createState

class _OnboardingScreenState extends State<OnboardingScreen> {
  final log = Logger;
  final PageController _pageController = PageController(initialPage: 0);
//Added a PageController that will control all onboarding pages because in future, because in the future there will be more then 1 onboarding page
  Widget _buildLetsGoButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen())),
//Created Lets Go! Button, shape, edges and position defined
        style: jmainButton,
        child: Text(
          'Lets Go!',
          style: TextStyle(
            color: Colors.green,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
//Stack used to make Widget relative to other widgets
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF43A047),
                  Color(0xFF0288D1),
                  Color(0xFF1A237E),
                ],
//Made page that has colors, used boxdecoration and extended it to fill the whole screen, with a color gradient,
                stops: [0.1, 0.3, 0.8],
//Each stop decimal signals when on screen each color stops and changes in the color gradient
              ),
            ),
          ),
          Container(
            height: 1500.0,
            child: PageView(
              physics: ClampingScrollPhysics(),
//physics added so that you can scroll on the onboarding page
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {});
              },
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Center(
                        child: Image(
                          image: AssetImage('assets/images/Vain.jpg'),
                          height: 300.0,
                          width: 300.0,
//Image uploaded to 1st Onboarding Screen, size of it as been changed and position defined
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Text(
                        'Welcome to Vanity!',
                        style: jTitleStyle,
                      ),
//Title that goes under image been made
                      Text(
                        'Gain inspiration for your next fit!, Don\'t forget to take a picture and share it with us! Stay vain!',
                        style: jSubtitleStyle,
//Subtitle also called caption made under Title
                      ),
                      SizedBox(height: 100.0),
                      _buildLetsGoButton(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
