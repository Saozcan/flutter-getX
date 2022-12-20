import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

// void main() {
//   runApp(
//     GetMaterialApp(
//       title: "Application",
//       initialRoute: AppPages.INITIAL,
//       getPages: AppPages.routes,
//       debugShowCheckedModeBanner: false,
//     ),
//   );
// }


//Timer

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String greeting = "Hello";
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), (){
      setState(() {
        greeting = "After Some Time";
      });
    });
  }
  
  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: "Material App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Material App Bar"),
        ),
        body: Center(child: Column(
          children: [
            Text(greeting, style: TextStyle(fontSize: 30),)
          ],
        ),),
      ),
    );
  }
  
}