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
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        greeting = "Periodic ${DateTime.now().second}";
      });
    });


    // Timer.periodic(const Duration(seconds: 1), (Timer timer) {
    //   if (!_isRunning) {
    //     // cancel the timer
    //     timer.cancel();
    //   }
    //   // _addItem();
    // });
    // super.initState();
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
            Text(greeting, style: TextStyle(fontSize: 30, color: Colors.black),),
            TextButton(onPressed: (){
              _timer.cancel();
            }, child: const Text("Stop"),)
          ],
        ),),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text('Kindacode.com'),
  //     ),
  //     body: ListView.builder(
  //       itemCount: _items.length,
  //       itemBuilder: (_, index) {
  //         return Card(
  //           margin: const EdgeInsets.all(10),
  //           color: Colors.amber,
  //           elevation: 5,
  //           child: ListTile(
  //             title: Text(_items[index]),
  //           ),
  //         );
  //       },
  //     ),
  //     // This button will stop the timer
  //     floatingActionButton: FloatingActionButton(
  //       onPressed: () {
  //         setState(() {
  //           _isRunning = false;
  //         });
  //       },
  //       child: const Icon(Icons.stop_circle),
  //     ),
  //   );
  // }
}