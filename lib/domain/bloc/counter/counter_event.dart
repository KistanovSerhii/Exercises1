part of 'package:flutter_application_3/common_path/counter.dart';

abstract class CounterEvent {}

class EventIncrement extends CounterEvent {}

class EventDecrement extends CounterEvent {}

class EventRandomFromCloud extends CounterEvent {}
