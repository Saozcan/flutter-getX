import 'package:flutter/material.dart';
import 'package:flutter_utils/core/random_image.dart';

class ListTileLEarn extends StatelessWidget {
  const ListTileLEarn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Text("Hello"),
          Card(
            child: ListTile(
              title: const RandomImage(),
              onTap: (){},
              subtitle: const Text("How do you use your card"),
              leading: const Icon(Icons.money),
              trailing: const Icon(Icons.chevron_right),
            ),
          )
        ],
      ),
    );
  }
}

//projeye özgü >>>PRODUCT<<< dosyası
//her yerde kullanılabilecek >CORE< dosyası