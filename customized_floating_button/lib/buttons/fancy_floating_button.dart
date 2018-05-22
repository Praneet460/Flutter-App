import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FancyButton extends StatelessWidget{

  FancyButton({@required this.onPressed});

  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new RaisedButton(
        color: Colors.blue,
        splashColor: Colors.yellow,
        child: new Padding(
          padding: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 20.0),
          child: new Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Icon(Icons.add,
                 color: Colors.black,),
              new SizedBox(width: 8.0,),
              new Text("Increment",
              style: new TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),),
            ],
          ),
        ),
        onPressed: onPressed,
        shape: const StadiumBorder(),
    );
  }
}