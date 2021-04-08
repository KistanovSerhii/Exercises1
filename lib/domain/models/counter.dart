import 'package:flutter/widgets.dart';

class Counter {
  int value;
  Counter({@required this.value});

  void increment() {
    this.value++;
  }

  void decrement() {
    this.value--;
  }
}
