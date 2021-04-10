part of 'package:flutter_application_3/internal/dependences/lib_references/counter_references.dart';

@immutable
abstract class CounterState {
  CounterState getRef();
//abstract class CounterState extends Equatable {
  /*@override
  List<Object> get props => [];*/
}

@immutable
class CounterInitialize extends CounterState {
  final Counter counter;
  CounterInitialize({@required this.counter});

  CounterState getRef() {
    return this;
  }
}

@immutable
class CounterCounting extends CounterState {
  CounterState getRef() {
    return this;
  }
}

@immutable
class CounterCounted extends CounterState {
  final Counter counter;
  CounterCounted({@required this.counter});

  CounterState getRef() {
    return this;
  }
}
