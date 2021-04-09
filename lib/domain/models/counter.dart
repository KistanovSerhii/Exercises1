import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_3/domain/bloc/counter/counter_state.dart';

class Counter {
  int value;
  Counter({@required this.value});

  CounterCounted increment() {
    this.value++;
    return CounterCounted(counter: this);
  }

  CounterCounted decrement() {
    this.value++;
    return CounterCounted(counter: this);
  }

  Future<CounterCounted> decrementCloudyComputition() async {
    int randomNum = await TestApiUtil.decrementCloudyComputition();
    this.value = randomNum;
    return CounterCounted(counter: this);
  }
}

// fake api
class TestApiUtil {
  static Future<int> decrementCloudyComputition() =>
      Future.delayed(Duration(seconds: 2), () {
        var rng = new Random();
        return rng.nextInt(100);
      });
}
