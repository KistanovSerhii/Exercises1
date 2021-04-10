part of 'package:flutter_application_3/internal/dependences/lib_references/counter_references.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  final Counter counter;
  CounterBloc({@required this.counter})
      // ВАЖНО задать первоначальное состояние
      : super(CounterInitialize(counter: counter));

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    switch (event.runtimeType) {
      case EventIncrement:
        yield CounterCounting();
        yield counter.increment();
        //state.getRef(); // Получилось!
        break;
      case EventDecrement:
        yield CounterCounting();
        if (counter.value % 2 == 0) {
          yield await counter.decrementCloudyComputition();
        } else {
          yield counter.decrement();
        }
        break;
      default:
    }
  }
}
