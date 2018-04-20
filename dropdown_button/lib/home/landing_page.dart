import 'package:flutter/material.dart';
class LandingPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new DropdownState();
  }
}

class DropdownState extends State<LandingPage>{

  List _marvels = ["Spider-Man", "Iron Man", "Captain America", "Hulk","Deadpool",
              "Black Widow", "Thanos", "Thor", "Quicksilver", "Black Panther",
       "Wolverine","Jean Grey", "Star-Lord", "Iceman"];
  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _selectedMarvel;


  @override
  void initState() {
    _dropDownMenuItems = buildAndGetDropDownMenuItems(_marvels);
    _selectedMarvel = _dropDownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> buildAndGetDropDownMenuItems(List marvels) {
    List<DropdownMenuItem<String>> items = new List();
    for (String marvel in marvels){
      items.add(new DropdownMenuItem(value: marvel, child: new Row(
        children: <Widget>[
          new ImageIcon(new AssetImage("assets/images/icon.png"), color: null,),
          new Text(marvel),
        ],
      )));

    }
    return items;
  }
  void changedDropDownItem(String selectedMarvel){
    setState(() {
      _selectedMarvel = selectedMarvel;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: new AppBar(

          title: new Text("MarvelCharacter"),
        ),
        body: new Container(
          child: new Center(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Image(
                  image: new AssetImage("assets/images/avenger.png"),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                ),
                new Text("Please Select your Favourite Marvel Character --",
                  style: new TextStyle(
                      color:  Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
//                      fontFamily: 'Poppins'
                  ),),
                new DropdownButton(
                  value: _selectedMarvel,
                  items: _dropDownMenuItems,
                  onChanged: changedDropDownItem,
                )
              ],
            ),

          ),
        ),
        )
      );

  }}