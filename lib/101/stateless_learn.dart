import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'container_sized_box_learn.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TitleTextWidget(title: "Ahmet",),
          TitleTextWidget(title: "Ahmet",),
          TitleTextWidget(title: "Ahmet",),
          _emptyBox(),
          _emptyBox(),
          TitleTextWidget(title: "Ahmet",),
          _emptyBox(),
          TitleTextWidget(title: "Ahmet",),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: _CustomeConteiner(), //extract widget ile oluşturuldu.
          ),
          _emptyBox(
          ),
        ],
      ),
    );
  }
}

class _emptyBox extends StatelessWidget {
  const _emptyBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
    );
  }
}

class _CustomeConteiner extends StatelessWidget { //Sayfaya özgü widgetlar "_" ile başlar.!!!
  const _CustomeConteiner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.red),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  // const TitleTextWidget({Key? key, this.title}) : super(key: key);
  const TitleTextWidget({Key? key, required this.title}) : super(key: key); // argüman zorunlu hale getirildi.

  final String title; //StatelessWidget e sornadan değişken kullanılmaz.
  //Argüman olarak almak için üst tarafa eklenir. Eğer şart değilse ? koyulur.


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Center(
        child: Text(
          title,
          // style: TextStyle(fontSize: 20,)
          style: Theme.of(context).textTheme.headline2, //Global Flutter themes
          textAlign: TextAlign.center, //Don't forget
        ),
      ),
    );
  }
}
