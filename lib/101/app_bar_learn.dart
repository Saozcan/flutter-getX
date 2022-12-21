import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'container_sized_box_learn.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({Key? key}) : super(key: key);

  final String _title = "Welcome Learn"; // Daima değişkenler bu şekilde tutulmalı,
  //içeriye tırnak içinde yazılmamalı


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: Icon(Icons.chevron_left) , // icon için
        // centerTitle: true, // ortadan başlatır.
        // backgroundColor: Colors.transparent, //transparent
        // elevation: 0, //tamamen gidiyor
        // systemOverlayStyle: SystemUiOverlayStyle.light,
        // actionsIconTheme: IconThemeData(color: ),
        toolbarTextStyle: TextStyle(color: Colors.red),
        automaticallyImplyLeading: false, // appbar a otomatik gelenleri kaldırmak için
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.mark_email_unread_sharp),
          ),
          Center(child: CircularProgressIndicator(),),
        ],
      ),
      body: Column(children: [
      ],),
    );
  }
}
