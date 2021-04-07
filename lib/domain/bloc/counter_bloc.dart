import 'package:bloc/bloc.dart';
import './counter_event.dart';
import './counter_state.dart';
import 'package:flutter_application_3/domain/model/counter.dart';

class CounterBloc extends Bloc<CounterEvent, CounterStates> {
  CounterBloc() : super(StateResting());
  // counter: Counter(value: 0), status: CounterStatus.resting));

  @override
  Stream<CounterStates> mapEventToState(CounterEvent event) async* {
    switch (event.runtimeType) {
      case EventIncrement:
        yield StateCounting();
        state.counter.increment();
        yield StateCounted();
        break;
      case EventDecrement:
        yield StateCounting();
        state.counter.decrement();
        yield StateCounted();
        break;
      default:
        StateResting();
    }
  }

  Future incrementF(int newValue) {
    state.counter.increment();
    add(EventIncrement());
  }
}
