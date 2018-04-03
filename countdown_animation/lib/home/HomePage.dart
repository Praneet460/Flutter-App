import 'package:flutter/material.dart';
import './appbar/GradientAppBar.dart';

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new GradientAppBar("counter"),



      ],
      )
    );
  }
}

