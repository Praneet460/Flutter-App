import 'package:flutter/material.dart';

class GalleryView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView.builder(
      shrinkWrap: true,

      padding: const EdgeInsets.all(20.0),
      itemCount: 20,
      itemBuilder: (context, rowNumber){
        return new Column(
          children: <Widget>[
            new Image.network('http://www.otakuusamagazine.com/wp-content/uploads/2017/12/eromanga.jpg', ),
            new Divider(color: Colors.white,),
            new Image.network('https://ncache.ilbe.com/files/attach/new/20140520/14357299/76142672/3560679740/7e098ca93185d2faf9d23e4b8804b7e7.jpg'),
            new Divider(color: Colors.white,),
            new Image.network('http://img2.wikia.nocookie.net/__cb20140120061808/creepypasta/images/e/e2/Anime-Girl-With-Silver-Hair-And-Purple-Eyes-HD-Wallpaper.jpg'),
            new Divider(color: Colors.white),
            new Image.network('https://www.japantimes.co.jp/wp-content/uploads/2018/01/p13-schley-anime-a-20180126-870x489.jpg'),
            new Divider(color: Colors.white,),
            new Image.network('https://www.anime-pulse.com/wp-content/uploads/2017/04/okusama-key-1000x600-1453811558-1000x576.jpeg'),
            new Divider(color: Colors.white,),
            new Image.network('http://mapinstitute.org/data/wallpapers/172/im57570249.jpg'),
            new Divider(color: Colors.white,)
          ],

        );
      },
    );

  }
}