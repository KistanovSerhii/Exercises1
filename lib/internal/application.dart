import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_3/internal/dependences/lib_references/counter_references.dart';
import 'package:flutter_application_3/presentation/home/home.dart';

class MyApp extends StatelessWidget {
  final CounterBloc _counterBloc = // ВАЖНО задать первоначальное состояние
      CounterBloc();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter bloC pattern',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => _counterBloc,
        child: HomePage(title: 'Flutter bloC pattern counter'),
      ),
    );
  }
}
