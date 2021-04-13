import 'package:flutter_application_3/domain/bloc/counter/counter_state.dart';
import 'package:flutter_application_3/domain/models/counter.dart';

class StateModule {
  static CounterStates counterState() =>
      CounterStates(context: Counter(value: 0));
}
