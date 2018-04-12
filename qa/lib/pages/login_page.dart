import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';

class LoginPage extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
      child: new Login()

    );
  }
}

class Login extends StatefulWidget{


  @override
  State createState() => new LoginPageState();

}

class LoginPageState extends State<Login>
//   with SingleTickerProviderStateMixin
  {


//  Animation<double> _iconAnimation;
//  AnimationController _iconAnimationController;
//  @override
//  void initState() {
//    super.initState();
//    _iconAnimationController = new AnimationController(
//        vsync: this, duration: new Duration(milliseconds: 500));
//    _iconAnimation = new CurvedAnimation(
//      parent: _iconAnimationController,
//      curve: Curves.bounceOut,
//    );
//    _iconAnimation.addListener(() => this.setState(() {}));
//    _iconAnimationController.forward();
//  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/ipec_banner.jpeg"),
            fit: BoxFit.cover,
            colorBlendMode: BlendMode.darken,
            color: Colors.black87,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
//              new FlutterLogo(
//                size: _iconAnimation.value * 50,
//              ),
              new Form(
                child: new Theme(
                  data: new ThemeData(
                    brightness: Brightness.dark,
                    primarySwatch: Colors.teal,
                    inputDecorationTheme: new InputDecorationTheme(
                      labelStyle: new TextStyle(
                        color: Colors.teal, fontSize: 20.0
                      )
                    )
                  ),
                  child: new Container(
                    padding: const EdgeInsets.only(top: 100.0, bottom: 40.0, left: 40.0, right: 40.0),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new TextFormField(
                          decoration: new InputDecoration(
                            labelText: "Roll No"
                          ),
                          keyboardType: TextInputType.number,
                        ),
                        new TextFormField(
                          decoration: new InputDecoration(
                            labelText: "Enter Password"
                          ),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                        new Padding(padding: const EdgeInsets.only(top: 100.0),
                        ),
                        new MaterialButton(
                            height: 40.0,
                            minWidth: 100.0,
                            color: Colors.teal,
                            textColor: Colors.white,
                            child: new Stack(
                              children: <Widget>[
                                new Icon(Icons.arrow_forward_ios, size: 30.0, color: Colors.white,),
                              ],
                            ),
                            onPressed: () => {},
                            splashColor: Colors.redAccent,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}