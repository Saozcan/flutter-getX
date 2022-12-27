import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text("data"),
          FlutterLogo(),
          FlutterLogo(),
          FlutterLogo(),
          FlutterLogo(),
          FlutterLogo(),
          FlutterLogo(),
          FlutterLogo(),
          Row(
            children: [
              Expanded(flex: 4, child: FlutterLogo()),
              // Bölümü eşit bölmesini sağlıyor.
              Expanded(flex: 2, child: FlutterLogo()),
              Expanded(flex: 3, child: FlutterLogo()),
              //flex verilen değişken üzerinden
              //oran orantı kurarak kısmı böler
              Expanded(child: FlutterLogo()),
              //responsive olarak kullanılabilir.
              Expanded(child: FlutterLogo()),
            ],
          ),
          SizedBox(
            height: 100,
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // justify mantığı ile çalıpyor MainAxisALignment
                  children: [
                    FlutterLogo(),
                    FlutterLogo(),
                    FlutterLogo(),
                    FlutterLogo(),
                  ],
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
