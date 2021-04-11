import 'dart:math';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_3/domain/bloc/counter/counter_state.dart';
import 'package:flutter_application_3/domain/repositories_contract/counter_repository.dart';
import 'package:flutter_application_3/internal/dependences_init_tools/repository_module.dart';

class CounterModule {
  static final CounterRepository repository =
      RepositoryModule.counterRepository();
}

class Counter extends CounterModule {
  int value;
  Counter({@required this.value});

  CounterState counting() {
    return CounterState(status: CounterStatus.counting, counter: this);
  }

  CounterState increment() {
    this.value++;
    return CounterState(status: CounterStatus.counted, counter: this);
  }

  CounterState decrement() {
    this.value--;
    return CounterState(status: CounterStatus.counted, counter: this);
  }

  Future<CounterState> getRandomFromCloudy() async {
    int randomNum = await TestApiUtil.getRandomFromCloudy();
    this.value = randomNum;
    return CounterState(status: CounterStatus.counted, counter: this);
  }
}

// fake computing delay
class TestApiUtil {
  static Future<int> getRandomFromCloudy() =>
      Future.delayed(Duration(seconds: 1), () {
        var rng = new Random();
        return rng.nextInt(100);
      });
}
