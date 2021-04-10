part of 'package:flutter_application_3/internal/dependences/lib_references/counter_references.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc()
      // ВАЖНО задать первоначальное состояние
      : super(CounterState(
            status: CounterStatus.init, counter: Counter(value: 0)));
  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    switch (event.runtimeType) {
      case EventIncrement:
        yield counterStateCounting();
        yield state.counter.increment();
        break;
      case EventDecrement:
        if (state.counter.value % 2 == 0) {
          yield counterStateCounting();
          yield await state.counter.decrementCloudyComputition();
        } else {
          yield counterStateCounting();
          yield state.counter.decrement();
        }
        break;
      default:
    }
  }

  CounterState counterStateCounting() =>
      CounterState(status: CounterStatus.counting, counter: state.counter);
}
