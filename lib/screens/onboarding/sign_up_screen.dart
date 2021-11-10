import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:prototype/screens/onboarding/date_of_birth.dart';
import 'package:prototype/utilities/ultconts.dart';

//Sign Up Screen basically is a copy and past of Login Screen without some parts of loginscreen
//Hence there are less annotations in SignUpScreen compared to LoginSCreen

class SignUpScreen extends StatelessWidget {
  final log = Logger;
  Widget _buildFirstNameTf() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: jBoxDecorationStyle,
      height: 60.0,
      child: TextFormField(
        keyboardType: TextInputType.name,
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'OpenSans',
//Typed inputs are OpenSans font
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 5.0),
//Typed inputs of 'First Name' words now made white and there is a border to type First Name in that only accepts TextInputs of FirstNames
          hintText: '  First Name',
          hintStyle: jHintTextStyle,
//Hints that go into bar
        ),
      ),
    );
  }

  Widget _buildLastNameTf() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: jBoxDecorationStyle,
//Box made where Last Name inputs go
      height: 60.0,
      child: TextFormField(
        keyboardType: TextInputType.name,
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'OpenSans',
//Typed finputs into boxdecoration now are white and in OpenSans font
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 5.0),
//Typed inputs of 'Last Name' words now made white and there is a border to type Last Name in that only accepts TextInputs of LastNames
          hintText: '  Last Name',
          hintStyle: jHintTextStyle,
//Hints that go into bar
        ),
      ),
    );
  }

  Widget _buildSUAAString() {
    return Container(
      height: 40.0,
      alignment: Alignment.center,
      child: Text(
        'By Signing Up, you acknowledge that you read and agree to our Privacy Policy and Terms & Services.',
        style: jLabelStyle,
//Simple Text String that appears under LastName bar
      ),
    );
  }

  Widget _buildContinueButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DOBScreen()));
//Continue button made an elevated button
        },
        style: jmainButton,
//Style of button made to be equal to constant jmainButton
        child: Text(
          'Continue!',
          style: TextStyle(
            color: Colors.green,
            letterSpacing: 1.5,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
//Created String 'Continue!' that goes into ContinueButton,
//'Continue!' made green while the button's background is white
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
                horizontal: 40.0,
                vertical: 120.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Let Us Get to Know You!', style: jTitleStyle),
                  SizedBox(height: 40.0),
                  _buildFirstNameTf(),
                  SizedBox(height: 40.0),
                  _buildLastNameTf(),
                  _buildSUAAString(),
                  SizedBox(height: 200.0),
                  _buildContinueButton(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
