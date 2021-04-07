import 'package:flutter/cupertino.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_application_3/domain/model/counter.dart';

abstract class CounterStates extends Equatable {
  Counter counter;
  CounterStates({@required counter});

  @override
  List<Object> get props => [];
}

class StateResting extends CounterStates {}

class StateCounting extends CounterStates {}

class StateCounted extends CounterStates {}
