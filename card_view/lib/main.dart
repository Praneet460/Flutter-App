import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    
    home: new MyStatelessWidget()
  )
  );
}

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: new AppBar(title: new Text("Sample Card View")),
      body: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new MyCard(
              title: new Text("I love Flutter",
                 style: new TextStyle(
                   fontSize: 25.0, fontWeight: FontWeight.bold
                 )),
              icon: new Icon(Icons.favorite, size: 40.0, color: Colors.redAccent)
            ),
            new MyCard(
              title: new Text("I love donuts",
                     style: new TextStyle(
                      fontSize: 25.0, fontWeight: FontWeight.bold
                     )),
              icon: new Icon(Icons.donut_large, size: 40.0, color: Colors.blue)
            ),
            new MyCard(
              title: new Text("I love Dart",
                    style: new TextStyle(
                        fontSize: 25.0, fontWeight: FontWeight.bold
                    )),
              icon: new Icon(Icons.computer, size: 40.0, color: Colors.amberAccent)
            ),
            new MyCard(
                title: new Text("I love Android",
                    style: new TextStyle(
                        fontSize: 25.0, fontWeight: FontWeight.bold
                    )),
                icon: new Icon(Icons.adb, size: 40.0, color: Colors.pinkAccent)
            )
          ]
        )
      )

    );
  }
}

class MyCard extends StatelessWidget {

  MyCard({this.title, this.icon});

  final Widget title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
        padding: new EdgeInsets.only(bottom: 20.0),
        child: new Card(
            child: new Container(
                padding: new EdgeInsets.all(10.0),
                child: new Column(
            children: <Widget>[

                this.title,
                this.icon


                ]
            )
        )
    ));
  }
}


