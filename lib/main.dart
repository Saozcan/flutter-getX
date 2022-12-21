// main.dart
import 'package:flutter/material.dart';
import 'package:flutter_utils/101/container_sized_box_learn.dart';
import 'package:flutter_utils/101/scaffold_learn.dart';

import 'dart:async';

import 'package:flutter_utils/101/text_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp( //Çoğunlukla projelerde 1 tane olur
      title: "Welcome to Flutter", // Projenin başlangıç yeri, ana root
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      // home: const TextLearn(),
      // home: ContainerSizedBoxLearn(),
      home: ScaffoldLearnView(),
      );
  }
}

