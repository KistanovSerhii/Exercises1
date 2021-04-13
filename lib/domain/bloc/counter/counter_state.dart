import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_application_3/domain/contracts/contexts.dart/counter_context.dart';
import 'package:flutter_application_3/domain/models/counter.dart';

@immutable
class CounterStates extends Equatable with CounterInterface {
  final Counter context;
  CounterStates({@required this.context});
  @override
  List<Object> get props => [context.value];

  @override
  Stream<CounterStates> reset() async* {
    yield context.counting();
    yield context.reset();
  }

  @override
  Stream<CounterStates> increment() async* {
    yield context.counting();
    yield context.increment();
  }

  @override
  Stream<CounterStates> decrement() async* {
    yield context.counting();
    yield context.decrement();
  }

  @override
  Stream<CounterStates> getRandomFromHttpRequest(range) async* {
    yield context.counting();
    yield await context.getRandomFromHttpRequest(range);
  }

  @override
  Stream<CounterStates> getRandomNumWithDelay() async* {
    yield context.counting();
    yield await context.getRandomNumWithDelay();
  }
}

@immutable
class InitCounterState extends CounterStates {
  InitCounterState(context) : super(context: context);
}

@immutable
class CountingCounterState extends CounterStates {
  CountingCounterState(context) : super(context: context);
}

@immutable
class CountedCounterState extends CounterStates {
  CountedCounterState(context) : super(context: context);
}

@immutable
class ErrorCounterState extends CounterStates {
  final String message;
  ErrorCounterState(this.message, context) : super(context: context);
}
