import 'package:flutter/material.dart';
import 'galleryview.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title:
            new Text("Gallery",
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 20.0
            )),
      ),
      body: new GalleryView(),
    );
  }
}