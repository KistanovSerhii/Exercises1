import 'dart:math';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_3/domain/bloc/counter/counter_state.dart';
import 'package:flutter_application_3/domain/contracts/contexts.dart/counter_context.dart';
import 'package:flutter_application_3/domain/contracts/repositories/counter_repository.dart';
import 'package:flutter_application_3/internal/dependences_init_tools/repository_module.dart';

class CounterModule {
  static final CounterRepository repository =
      RepositoryModule.counterRepository();
}

class Counter extends CounterModule with CounterInterface {
  int value;
  Counter({@required this.value});

  CounterStates counting() {
    return CountingCounterState(this);
  }

  @override
  CounterStates reset() {
    this.value = 0;
    return CountedCounterState(this);
  }

  @override
  CounterStates increment() {
    this.value++;
    return CountedCounterState(this);
  }

  @override
  CounterStates decrement() {
    this.value--;
    return CountedCounterState(this);
  }

  @override
  Future<CounterStates> getRandomFromHttpRequest(range) async {
    try {
      Counter respond =
          await CounterModule.repository.getRandomCounter(range: range);
      this.value = respond.value;
      return CountedCounterState(this);
    } catch (e) {
      return ErrorCounterState("Error", this);
    }
  }

  Future<CounterStates> getRandomNumWithDelay() async {
    this.value = await RandomNumWithDelay.getRandomNumWithDelay();
    return CountedCounterState(this);
  }
}

// test fake computing delay
class RandomNumWithDelay {
  static Future<int> getRandomNumWithDelay() =>
      Future.delayed(Duration(seconds: 1), () {
        var rng = new Random();
        return rng.nextInt(100);
      });
}
