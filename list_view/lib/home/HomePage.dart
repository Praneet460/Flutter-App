import 'package:flutter/material.dart';
import 'contact_page.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(

      appBar: new AppBar(
        title:
            new Text("Top Companies & Their CEOs",
            style: const TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 20.0
        )),
      ),
      body: new ContactPage(),

    );
  }
}