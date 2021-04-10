part of 'package:flutter_application_3/internal/dependences/lib_references/counter_references.dart';

class Counter {
  int value;
  Counter({@required this.value});

  CounterState increment() {
    this.value++;
    return CounterState(status: CounterStatus.counted, counter: this);
  }

  CounterState decrement() {
    this.value++; // !!!!!!!!!!!!!!!!!!!!
    return CounterState(status: CounterStatus.counted, counter: this);
  }

  Future<CounterState> decrementCloudyComputition() async {
    int randomNum = await TestApiUtil.decrementCloudyComputition();
    this.value = randomNum;
    return CounterState(status: CounterStatus.counted, counter: this);
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
