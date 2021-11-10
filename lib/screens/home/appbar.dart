import 'package:flutter/material.dart';
import 'package:prototype/screens/home/profile.dart';
import 'package:prototype/utilities/ultconts.dart';

class TheAppBar extends StatefulWidget {
  @override
  _TheAppBarState createState() => _TheAppBarState();
}

class _TheAppBarState extends State<TheAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
//Created default appBar, app now shows blue bar and white screen because Scaffold is automatically white
        backgroundColor: Color(0xFF212121),
//Appbar colour set
        title: Text(
          'Vanity',
          style: jTitleStyle,
//Text in AppBar made
        ),
        actions: [
//Actions make icons appear on top right of AppBar
          IconButton(
            icon: Icon(Icons.notifications_none_rounded),
            onPressed: () {
              print('NotificationsButtonPressed');
            },
          ),
//IconButton for Notifications made, same code from 24-29 copied and pasted for Account Button
          IconButton(
            icon: Icon(Icons.account_box_rounded),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileScreen(email: '', password: '', postaladdress: '', Username: '',)));
            },
          ),
        ],
      ),
//AppBar
      body: Stack(alignment: Alignment.topRight, children: <Widget>[
//Actual main part of homescreen starts to be made here
        ListView(
          children: <Widget>[
            SizedBox(height: 25),
//Positions the Followed Users Button to be 25 units below the AppBar
//Actual _buildImageButton made before below code, go to line 83 to see the _buildImageButton Code
            _buildImageButton('assets/images/user.png', 'Follow Users'),
            SizedBox(height: 40),
//Posiitons Following Row of buttons to be 40 units below the Followed Users Button
            Row(
//Second set of main icons set into a row so it is aligned
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildImageButton('assets/images/hanger.png', 'Fashion'),
                SizedBox(
                  width: 60,
                ),
//ALl SizedBox Width space out buttons horizontally
//All SizedBox Height spaces out buttons vertically
                _buildImageButton('assets/images/lipstick.png', 'Make Up'),
              ],
            ),
            SizedBox(height: 40),
            Row(
//Third row of buttons made
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildImageButton('assets/images/dumbell.png', 'Gym'),
                SizedBox(
                  width: 60,
                ),
                _buildImageButton('assets/images/beauty.png', 'Beauty'),
              ],
            )
          ],
        )
      ]),
      backgroundColor: Color(0xFF212121),
    );
  }
}

//Below is the actual Image Button code
Widget _buildImageButton(String image, String title) {
//Putting String image, String title ensures that I refer to whole code below but change image and title while only typing _buildImageButton
  return Container(
    child: Column(
      children: <Widget>[
        Stack(alignment: Alignment.center, children: <Widget>[
          CircleAvatar(
            child: Image.asset(image, height: 70),
            radius: 60,
            backgroundColor: Color(0xFF303030),
//Circle Avatar made to make button circular, image and title will be put for each different button in above code
          )
        ]),
        SizedBox(height: 10.0),
        Text(
          title,
          style: jTitleStyle2,
//Aligning CircleAvatar to be in the middle of the page, put the image of users in using image.asset, made the radius,
//changed the background color that the image rests in.
//Then Text made underneath with custom style
        ),
      ],
    ),
  );
}
