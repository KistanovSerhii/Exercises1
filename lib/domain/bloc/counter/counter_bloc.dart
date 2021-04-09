import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'counter_event.dart';
import 'counter_state.dart';
import 'package:flutter_application_3/domain/models/counter.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  final Counter counter;
  CounterBloc({@required this.counter}) : super(CounterInitialize());

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    switch (event.runtimeType) {
      case EventIncrement:
        yield CounterCounting();
        await counter.increment();
        yield CounterCounted(counter: counter);
        break;
      case EventDecrement:
        yield CounterCounting();
        yield await counter.decrement();
        break;
      default:
    }
  }
}
