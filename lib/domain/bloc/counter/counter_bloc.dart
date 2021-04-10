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
        yield* state.increment();
        break;
      case EventDecrement:
        yield* state.decrement();
        break;
      case EventRandomFromCloud:
        yield* state.getRandomFromCloudy();
        break;
      default:
    }
  }
}
