import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
//Created State for Stateful Widget
//HomeScreen UI is now a Stateful Widget

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF212121),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF212121),
        type: BottomNavigationBarType.fixed,
//BottomNavigationBar made and color set
        items: [
          new BottomNavigationBarItem(
            icon: new SizedBox(
              child: new IconButton(
                  icon: new Image.asset('assets/images/home.png'),
                  onPressed: () {}),
              width: 58,
              height: 58,
            ),
            title: Container(),
//Home Button made, and is an item in BNB (BottomNavigationBar), Imported an icon and made it asset in pubspec.yaml
//All other BNB Button Items are a copy of code from lines 25-33 but Image.asset() changed button a different icon
          ),
          new BottomNavigationBarItem(
            icon: new SizedBox(
              child: new IconButton(
                  icon: new Image.asset('assets/images/vanity-mirror.png'),
                  onPressed: () {}),
              width: 58,
              height: 58,
            ),
            title: Container(),
          ),
          new BottomNavigationBarItem(
            icon: new SizedBox(
              child: new IconButton(
                  icon: new Image.asset('assets/images/wardrobe.png'),
                  onPressed: () {}),
              width: 58,
              height: 58,
            ),
            title: Container(),
          ),
          new BottomNavigationBarItem(
            icon: new SizedBox(
              child: new IconButton(
                  icon: new Image.asset('assets/images/chat.png'),
                  onPressed: () {}),
              width: 58,
              height: 58,
            ),
            title: Container(),
          ),
        ],
      ),
      body: TheAppBar(),
//AppBar made a body and code for AppBar is on another file to make code cleaner and easier to understand
    );
  }
}
