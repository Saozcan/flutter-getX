import 'package:flutter/material.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // İskelet, header main footer birleşmesi gibi
      appBar: AppBar(
        backgroundColor: Colors.blue,
        shape: Border.all(color: Colors.black26),
      ),
      body: Column(
        children: const [
          Text("Merhaba"),
          Text("Canımm"),
        ],
      ),
      backgroundColor: Colors.red,
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () { //Its not working
          showBottomSheet(
              context: context,
              builder: (context) => Container(
                    height: 200,
                  ));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //Floating button center
      drawer: Drawer(),
      //Menu

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: "a"),
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: "b"),
        ],
      ),
    );
  }
}
