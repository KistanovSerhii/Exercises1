part of 'package:flutter_application_3/common_path/module.dart';

class StateModule {
  static CounterState counterState() => CounterState(
      status: CounterStatus.init,
      counter: Counter(value: 0),
      repository: RepositoryModule.counterRepository());
}
