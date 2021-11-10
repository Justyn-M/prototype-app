import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';
import 'package:prototype/screens/onboarding/onboarding.dart';
import 'package:prototype/utilities/ultconts.dart';

class RegUNScreen extends StatefulWidget {
    RegUNScreen({Key? key}) : super(key: key);
  
  TextEditingController _Username = new TextEditingController();
//This controller are placed here to enable data transfer between this screen to profile screen but I couldnt implement the controllers
//to get it working
  @override
  _RegUNScreenState createState() => _RegUNScreenState();
}

class _RegUNScreenState extends State<RegUNScreen> {
  final log = Logger;
  Widget _buildRegUNButtonTf() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: jBoxDecorationStyle,
      height: 60.0,
      child: TextFormField(
        keyboardType: TextInputType.multiline,
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'OpenSans',
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
//'UserName' word now made white and there is a border to type Username in that only accepts TextInputs of Usernames
//Need Email Icon to be fitted in next
          prefixIcon: Icon(
            Icons.supervised_user_circle_sharp,
            color: Colors.white,
//User Icon made by prefixIcon, Icon is placed into the front of the UserName bar
//Will change Icon to custom Icon made from Rive for future builds
          ),
          hintText: 'UserName',
          hintStyle: jHintTextStyle,
//Hints that go into bar
        ),
      ),
    );
  }

  Widget _buildGetVainButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => OnboardingScreen()));
//Get Vain button made an elevated button
        },
        style: jmainButton,
//Style of button made to be equal to constant jmainButton
        child: Text(
          'Get Vain!',
          style: TextStyle(
            color: Colors.green,
            letterSpacing: 1.5,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
//Created String 'Get Vain!' that goes into GetVainButton,
//'Get Vain!' made green while the button's background is white
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Copy and Pasted from LoginScreen
      //Made to ensure that Sign Up Screen has same background color as LoginScreen
      body: Stack(
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
                stops: [0.1, 0.3, 0.8],
              ),
            ),
          ),
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: 140.0,
                vertical: 70.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Last Step!', style: jTitleStyle),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: 40.0,
                vertical: 160.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('What should everyone call you?', style: jTitleStyle),
                  SizedBox(height: 30.0),
                  _buildRegUNButtonTf(),
                  SizedBox(height: 300.0),
                  _buildGetVainButton(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
