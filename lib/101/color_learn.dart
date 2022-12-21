import 'package:flutter/material.dart';

import 'container_sized_box_learn.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text("Color", style: TextStyle(
            color: ColorItems().pusColor,
          ),)
        ],
      ),
    );
  }
}


class ColorItems { //Asla class dışı kod yazılmaz
  //ilerde oalcak still böyle ama farklı dosyalar için
  //class içinde gezerek kod değiştirme yapılmaz.
  final Color pusColor = Color(0xff000000);
}