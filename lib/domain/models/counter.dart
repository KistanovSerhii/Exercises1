import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_3/domain/bloc/counter/counter_state.dart';

class Counter {
  int value;
  Counter({@required this.value});

  Future<void> increment() {
    this.value++;
  }

  Future<CounterCounted> decrement() async {
    int randomNum = await TestApiUtil.decrement();
    this.value = randomNum;
    return CounterCounted(counter: Counter(value: this.value));
  }
}

// fake api
class TestApiUtil {
  static Future<int> decrement() => Future.delayed(Duration(seconds: 2), () {
        var rng = new Random();
        return rng.nextInt(100);
      });
}
