import 'package:flutter/material.dart';

import 'container_sized_box_learn.dart';

class IconLearn extends StatelessWidget {
  const IconLearn({Key? key}) : super(key: key);

  final String _appBarLead = "App Bar With Icon";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarLead),
      ),
      body: Column(
        children: [
          Center(child: Text("First")),
          Icon(Icons.messenger_outline),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.abc,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}
