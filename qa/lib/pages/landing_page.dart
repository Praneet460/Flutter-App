import 'package:flutter/material.dart';
import 'login_page.dart';

class LandingPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
      color: Colors.white,
      child: new InkWell(
        onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new LoginPage())),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Welcome To",
              style: new TextStyle(
                  color: Colors.black54,
                  fontSize: 50.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins'),),
            new Image(
              image: new AssetImage("assets/paperwrk_logo.jpeg"),
            ),
            new Text("Tap to start!",
              style: new TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 40.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Comfortaa'),)
          ],
        ),
      ),
    );
  }
}

