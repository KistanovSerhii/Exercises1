import 'package:flutter/cupertino.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_application_3/domain/models/counter.dart';

@immutable
abstract class CounterState extends Equatable {
  @override
  List<Object> get props => [];
}

@immutable
class CounterInitialize extends CounterState {}

@immutable
class CounterCounting extends CounterState {}

@immutable
class CounterCounted extends CounterState {
  final Counter counter;
  CounterCounted({@required this.counter});

  @override
  List<Object> get props => [counter];
}
