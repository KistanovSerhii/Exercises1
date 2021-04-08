import 'package:flutter/cupertino.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_application_3/domain/models/counter.dart';
import 'package:flutter_application_3/internal/dependences/repositories/counter.dart';

abstract class CounterState extends Equatable {
  @override
  List<Object> get props => [];
}

class CounterInitialize extends CounterState {}

class CounterCounting extends CounterState {}

class CounterCounted extends CounterState {
  final Counter counter;
  CounterCounted({@required this.counter});
}
