import 'package:flutter/material.dart';

//üst üste binme durumlarında stack kullanılır
//bir çeşit relative absolute işlemi

class StackLearn extends StatelessWidget {
  const StackLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            color: Colors.blue,
            height: 100,
          ),
          SizedBox(
            height: 100,
            child: Text("Second"),
          ),
          Positioned(child: Text("Positioned"),
          right: 0,
          ),
          Positioned.fill(child: Text("PositioneFill"), bottom: 0,), // not work,
          Positioned(child: Text("Bottom0"), bottom: 0,)
          //üstten alta doğru geçiş yapar, en üstteki widget en öne çıkar
        ],
      ),
    );
  }
}
