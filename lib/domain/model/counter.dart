import 'package:flutter/widgets.dart';

class Counter {
  int value;
  Counter({@required this.value});

  Counter increment() {
    value++;
  }

  Counter decrement() {
    value--;
  }
}
