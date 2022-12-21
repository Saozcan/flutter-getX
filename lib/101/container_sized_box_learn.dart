import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox( //kutu oluşturmak için
            width: 200,
            height: 200,
            child: Text("a" * 500 ),
          ),
          const SizedBox.shrink(),
          SizedBox.square(dimension: 50,
          child: Text("b" * 50),),
          Container( //With many css
            constraints: BoxConstraints(maxHeight: 200, maxWidth: 200, minHeight: 50, minWidth: 50),
            child: Text("aab" * 5000),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.redAccent, Colors.black]),
              boxShadow: [BoxShadow(color: Colors.greenAccent, offset: Offset(0.1, 1))],
              borderRadius: BorderRadius.circular(10),

            ),

          )
        ],
      ),

    );
    throw UnimplementedError();
  }
}