import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return new Material(
      color: Colors.blueGrey,
      child: new InkWell(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("First Flutter App using Dart programming language",
             textAlign: TextAlign.center,

             style: new TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),),
            new Text("Hello World!", style: new TextStyle(color: Colors.white, fontSize:30.0 ),),
            new Text("Too much children", style: new TextStyle(color: Colors.white, fontSize: 20.0),)



          ],
        )
      ),

    );
  }
}