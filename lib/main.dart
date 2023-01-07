import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_utils/counter_bloc/counter_cubit.dart';
import 'package:flutter_utils/counter_bloc/counter_page.dart';

void main() => runApp(CounterApp());

class CounterApp extends StatelessWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: BlocProvider(
      create: (_) => CounterCubit(),
      child: const CounterPage(),
    ));
  }
}
