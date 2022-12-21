import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(onPressed: () {}, child: Text("ButtonLearn"),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed))
                  return Colors.green;
              }
              ),
            ),
          ),
          SizedBox(
            width: 200,
              height: 200,
              child: ElevatedButton(onPressed: () {}, child: Text("ElevateButton")),
          ),
          BackButton(),
          CloseButton(),
          CupertinoButton(child: Text("Cuper"), onPressed: () {}),
          IconButton(onPressed: () {}, icon: Icon(Icons.abc)),
          FloatingActionButton(onPressed: () {},
            child: Icon(Icons.add),
          ),
          OutlinedButton(
            onPressed: () {}, child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text("Outlined", style: TextStyle(

          ),
              ),
            ),
            style:OutlinedButton.styleFrom(backgroundColor: Colors.red,
            shape: CircleBorder(),
              padding: EdgeInsets.all(2),
            ),
          ),

          InkWell(
            onTap: () {},
            child: Container(
              child: TextField(keyboardAppearance: Brightness.light),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),


            ),
          ),
        Container(
          height: 100,
          width: 100,

        )
        ],
      ),
    );
  }
}

