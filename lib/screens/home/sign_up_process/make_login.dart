import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';
import 'package:prototype/screens/home/sign_up_process/register_usesrname.dart';
import 'package:prototype/utilities/ultconts.dart';

class MLScreen extends StatefulWidget {
  MLScreen({Key? key}) : super(key: key);

  TextEditingController _email = new TextEditingController();
  TextEditingController _password = new TextEditingController();
  TextEditingController _postaladdress = new TextEditingController();
//These controllers are placed here to enable data transfer between this screen to profile screen but I couldnt implement the controllers
//to get it working
  @override
  _MLScreenState createState() => _MLScreenState();
}

class _MLScreenState extends State<MLScreen> {
  final log = Logger;
  final emailController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    //Logger currently placed here to try something unrelated to assignment

    super.dispose();
  }

  Widget _buildRegEmailTf() {
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
          hintText: 'Email',
          hintStyle: jHintTextStyle,
//Hints that go into bar
        ),
        validator: (email) => email != null && !EmailValidator.validate(email)
            ? 'Please enter a valid email'
            : null,
      ),
    );
  }

  Widget _buildRegPasswordTf() {
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

  Widget _buildRegConPasswordTf() {
//This widget is to confirm registered password
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
//'Confirm Password' word now made white and there is a border to type Password in that only accepts TextInputs of passwordAddresses
//Need Password Icon to be fitted in next
          prefixIcon: Icon(
            Icons.lock,
            color: Colors.white,
//Confirm Password Icon made by prefixIcon, Icon is placed into the front of the password bar
//Will change Icon to custom Icon made from Rive for future builds
          ),
          hintText: 'Confirm Password',
          hintStyle: jHintTextStyle,
//Hints that go into bar that are transluscent
        ),
      ),
    );
  }

  Widget _buildRegPostAddressTf() {
//This widget is to register postal address
    return Container(
      alignment: Alignment.centerLeft,
      decoration: jBoxDecorationStyle,
      height: 60.0,
      child: TextFormField(
        keyboardType: TextInputType.number,
        style: TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
//'Postal Address' word now made white and there is a border to type Postal Address in that only accepts TextInputs of Postal Addresses
//Need Location Icon to be fitted in next
          prefixIcon: Icon(
            Icons.add_location_sharp,
            color: Colors.white,
//Location Icon made by prefixIcon, Icon is placed into the front of the Postal Address bar
//Will change Icon to custom Icon made from Rive for future builds
          ),
          hintText: 'Postal Address',
          hintStyle: jHintTextStyle,
//Hints that go into bar that are transluscent
        ),
      ),
    );
  }

  Widget _buildNext1Button(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => RegUNScreen()));
//Get Vain button made an elevated button
        },
        style: jmainButton,
//Style of button made to be equal to constant jmainButton
        child: Text(
          'Next!',
          style: TextStyle(
            color: Colors.green,
            letterSpacing: 1.5,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
//Created String 'Next!' that goes into NextButton,
//'Next!' made green while the button's background is white
          ),
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
                        'Nearly There!',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
//Nearly There! text placed on the top of the screen
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Text(
                        "Let's Make Your Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
//Let's make your login text placed on the top of the screen
                        ),
                      ),
                      //Sign In text created for LoginScreen, chosen color white, fontSize might have to change later if too big or small
                      SizedBox(height: 30.0),
                      _buildRegEmailTf(),
                      //Dynamic, using it to put EmailBar at top of code and make it a Widget
                      SizedBox(height: 30.0),
                      //Widget built for Registering Email
                      _buildRegPasswordTf(),
                      //Widget built for Registering Password
                      SizedBox(height: 30.0),
                      _buildRegConPasswordTf(),
                      //Built Widget for Registering Confirmed Password
                      SizedBox(height: 20.0),
                      Column(
                        children: <Widget>[
                          Text(
                            '---- Other Info ----',
                            style: jTitleStyle2,
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
//Other Info words made according to design form
                          _buildRegPostAddressTf(),
                          //Widget Build for Registering Postal Addresses
                          SizedBox(
                            height: 10.0,
                          ),
                          _buildNext1Button(context),
                          //Widget Build for Next1Button
                        ],
                      ),
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
