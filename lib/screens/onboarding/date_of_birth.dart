import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:logger/logger.dart';
import 'package:prototype/screens/home/sign_up_process/make_login.dart';
import 'package:prototype/utilities/ultconts.dart';

class DOBScreen extends StatefulWidget {
  DOBScreen({Key? key}) : super(key: key);

  @override
  _DOBScreenState createState() => _DOBScreenState();
}

class _DOBScreenState extends State<DOBScreen> {
//DatePicker Widget made from package found on pub.dev
final log = Logger;
  Widget _buildDatePicker(BuildContext context) {
    return DatePickerWidget(
      initialDate: DateTime(2000, 1, 1),
      lastDate: DateTime.now().add(
        Duration(days: -1),
      ),
      firstDate: DateTime.now().add(Duration(days: -(37000))),
      dateFormat: "dd-MM-yyyy",
      locale: DatePicker.localeFromString('x'),
      pickerTheme: DateTimePickerTheme(
          backgroundColor: Colors.transparent, dividerColor: Colors.white),
    );
  }

 Widget _buildNext1Button(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MLScreen()));
//Next1 button made an elevated button
        },
        style: jmainButton,
//Style of button made to be equal to constant jmainButton
        child: Text(
          'Next',
          style: TextStyle(
            color: Colors.green,
            letterSpacing: 1.5,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
//Created String 'Next' that goes into Next1Button,
//'Next1' made green while the button's background is white
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Copy and Pasted code
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
                  Text("What's your date of birth?", style: jTitleStyle),
                  SizedBox(height: 80.0),
                  _buildDatePicker(context),
                  SizedBox(height: 200.0),
                  _buildNext1Button(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
