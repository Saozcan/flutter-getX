// main.dart
import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Hide the debug banner
        debugShowCheckedModeBanner: false,
        title: 'Kindacode.com',
        home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // This list hold the items of the list view
  final List<String> _items = [];



  // This variable determines whether the timer runs or not
  bool _isRunning = true;

  // This function will add a new item to the list every 1 second
  // void _addItem() {
  //   final DateTime now = DateTime.now();
  //   setState(() {
  //     _items.add("${now.hour}:${now.minute}:${now.second}");
  //   });
  // }

  String greeting = "";
  String checkColor = "black";
  int timer2 = 10;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        greeting = "Periodic ${timer2}";
        if (timer2 > 0) {
          checkColor = "black";
          timer2--;
        }
        else {
          timer2 = 0;
          checkColor = "red";
        }
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
            Text(greeting, style: TextStyle(fontSize: 30, color: checkColor != "red" ? Colors.black : Colors.red),),
            TextButton(onPressed: (){
              _timer.cancel();
              setState(() {
              });
            }, child: const Text("Stop"),),
            TextButton(onPressed: (){setState(() {
              timer2 = 10;
            });}, child: const Text("Start"))
          ],
        ),),
      ),
    );
  }
}

