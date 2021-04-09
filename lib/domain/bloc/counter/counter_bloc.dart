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
        yield counter.increment();
        break;
      case EventDecrement:
        yield CounterCounting();
        if (counter.value % 2 == 0) {
          yield await counter.decrementCloudyComputition();
        } else {
          yield counter.decrement();
        }
        break;
      default:
    }
  }
}
