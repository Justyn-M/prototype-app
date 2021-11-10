import 'package:flutter/material.dart';

//Constants created
//ALl j"-" have unique textstyles or boxdecorations
//Made Constants to make code cleaner
final jHintTextStyle = TextStyle(
  color: Colors.white54,
  fontFamily: 'AtomicMd',
//Custum transluscent UI Text Hint made with font AtomicMd
);
//Can be used with style:
final jLabelStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontFamily: 'AtomidMd',
//Customer Bolded Label made with font AtomicMd
);
//Can be used with style:
final jBoxDecorationStyle = BoxDecoration(
  color: Color(0xFF6CA8F1),
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);

final jTitleStyle = TextStyle(
  color: Colors.white,
  fontFamily: 'AtomicMd',
  fontSize: 26.0,
  height: 1.5,
//Customer Title Made with font AtomicMd
);

final jSubtitleStyle = TextStyle(
  color: Colors.white,
  fontFamily: 'AtomicMd',
  fontSize: 18.0,
  height: 1.2,
//Customer Subtitle or caption made with font AtomicMd
);

final jmainButton = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(Colors.white),
  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
  //changing value here changes height of the Button
  textStyle: MaterialStateProperty.all(
    TextStyle(fontSize: 20),
  ),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
  ),
);

final jTitleStyle2 = TextStyle(
  color: Colors.white,
  fontFamily: 'AtomicMd',
  fontSize: 18.0,
  height: 1.5,
//Customer Title Made with font AtomicMd
);
