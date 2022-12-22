import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Mobile uygulamarda padding hep ortaktır.
//Bazı componentlerde padding olabilir, container gibi
class PaddingLearn extends StatelessWidget {
  const PaddingLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: CustomConteiner(),
            ),
          ),
          Padding(
            padding: EdgeInsets.zero,
            child: CustomConteiner(),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5, top: 50, right: 2, bottom: 30),
            child: CustomConteiner(),
          ),
          Padding(
            padding: EdgeInsets.all(30.0),
            child: CustomConteiner(),
          ),
          Column(
            children: [
              Padding(
                padding: ProjectPadding.pagePaddingVertical, //This it the way...!!!
                child: CustomConteiner(),
              ),
              Padding(
                padding: ProjectPadding.pagePaddingVertical, //This it the way...!!!
                child: CustomConteiner(),
              ),
              Padding(
                padding: ProjectPadding.pagePaddingVertical, //This it the way...!!!
                child: CustomConteiner(),
              ),
              Padding(
                padding: ProjectPadding.pagePaddingVertical, //This it the way...!!!
                child: CustomConteiner(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


//olması gereken
class ProjectPadding {
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 10);
}



class CustomConteiner extends StatelessWidget {
  const CustomConteiner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      color: Colors.blueAccent,
    );
  }
}
