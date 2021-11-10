import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';
import 'package:prototype/screens/onboarding/sign_up_screen.dart';
import 'package:prototype/utilities/ultconts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
//Have to createState because LoginScreen been made a StateFulWidget
}

class _LoginScreenState extends State<LoginScreen> {
//made _LoginScreenState to become LoginScreen
final log = Logger;
  bool _rememberMe = false;
  Widget _buildEmailTf() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: jBoxDecorationStyle,
      height: 60.0,
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'OpenSans',
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
//'Email' word now made white and there is a border to type Email in that only accepts TextInputs of emailAddresses
//Need Email Icon to be fitted in next
          prefixIcon: Icon(
            Icons.email,
            color: Colors.white,
//Email Icon made by prefixIcon, Icon is placed into the front of the email bar
//Will change Icon to custom Icon made from Rive for future builds
          ),
          hintText: 'Email or Username',
          hintStyle: jHintTextStyle,
//Hints that go into bar
        ),
      ),
    );
  }

  Widget _buildPasswordTf() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: jBoxDecorationStyle,
      height: 60.0,
      child: TextFormField(
        obscureText: true,
//Code => keyboardType: TextInputType.visiblePassword, Not needed so it is deleated
//Code from previous note replaced with obscureText: true, this blocks out text so that no one can see password
        style: TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
//'Password' word now made white and there is a border to type Password in that only accepts TextInputs of passwordAddresses
//Need Password Icon to be fitted in next
          prefixIcon: Icon(
            Icons.lock,
            color: Colors.white,
//Password Icon made by prefixIcon, Icon is placed into the front of the password bar
//Will change Icon to custom Icon made from Rive for future builds
          ),
          hintText: 'Password',
          hintStyle: jHintTextStyle,
//Hints that go into bar that are transluscent
        ),
      ),
    );
  }

  Widget _buildForgotPasswordButton() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () => print('Forgot Passwoord Button Pressed'),
        child: Text(
          'Forgot Password?',
          style: jLabelStyle,
//TextButton made for forgot password, when pressed currently does not do anything because next page not made
        ),
      ),
    );
  }

  Widget _buildRememberMeCheckBox() {
    return Container(
      height: 30.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: _rememberMe,
              checkColor: Colors.green,
//Tick in the checkbox button made green
              activeColor: Colors.white,
//Outline of Remember Me box made
//After this go back up to class _LoginScreenState extends State<LoginScreen>
//Made bool _rememberMe to equal false string so that value can be made value: _rememberMe, instad of value: false
              onChanged: (value) {
                setState(() {
                  _rememberMe = value!;
//State created and defined
                });
              },
            ),
          ),
          Text(
            'Remember Me',
            style: jLabelStyle,
//Remember me text made beside button, if users want password and username saved so that they wont have to login again if they relaunch app
//they hit the checkbox button
          )
        ],
      ),
    );
  }

  Widget _buildLoginButton() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => print('Login Button Pressed'),
        style: jmainButton,
        child: Text(
          'LOGIN',
          style: TextStyle(
            color: Colors.green,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
//Created Word 'Login' that goes into LoginBarButton,
          ),
        ),
      ),
    );
  }

  Widget _buildWTJIOTF() {
    return GestureDetector(
        onTap: () => print('Sign Up Button Pressed'),
        child: RichText(
//Code in the middle of _buildLoginButton() and text: Textspan()
//Originally RichText() code, then wrapped with new widget
//Widget code then changed to GesturDetector(), RichText then made as 'child' of GesturDetector
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Want to join in on the fun?   ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
//Text that is NOT a button made under LoginBar
            ],
          ),
        ));
  }

  Widget _buildSignUpButton() {
    return Container(
      alignment: Alignment.center,
      child: TextButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SignUpScreen()));
//Lines 197 to 199 allows for a button to be pressed to take to SignUpScreen
//Written this note for future reference
        },
        child: Text(
          'Sign Up Here!',
          style: jLabelStyle,
//TextButton made to say Sign Up Here!
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//Next 2 lines of code was added last after everything else
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
//Above 2 lines of code was added last after everything else
//Line of code beloe child:Stack to be wrapped into a new widget of GestureDetector
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
//onTap then added to child of GestureDectector
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
//BoxDecoration has to be made to cover blank white screen, can edit BoxDecoration colors so that page will look like an UI
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
              //Colors listed, color gradient made
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
                      Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
//Sign in text placed on the top of the screen
                        ),
                      ),
                      //Sign In text created for LoginScreen, chosen color white, fontSize might have to change later if too big or small
                      SizedBox(height: 30.0),
                      _buildEmailTf(),
                      //Dynamic, using it to put EmailBar at top of code and make it a Widget
                      SizedBox(height: 30.0),
                      //Code Under SizeBox(height: 30.0) is a Copy and Paste from Previous Code under _buildEmailTf(),
                      //Then Changed from Email to Password
                      //Then made into a Dynamic, using it to put PasswordBar at top of code and make it a Widget
                      _buildPasswordTf(),
                      //Widget built for PasswordTf
                      _buildForgotPasswordButton(),
                      //Built Widget for ForgotPassword
                      _buildRememberMeCheckBox(),
                      //Widget Build for RememberMeCheckBox
                      _buildLoginButton(),
                      //Widget Build for LoginButton
                      _buildWTJIOTF(),
                      //Widget Built for Want To Join In On the Fun
                      _buildSignUpButton(),
                      //Widget built for SignUpButton
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
