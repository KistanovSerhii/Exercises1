part of 'package:flutter_application_3/internal/dependences/lib_references/counter_references.dart';

enum CounterStatus { init, counting, counted, error }

@immutable
class CounterState extends Equatable {
  final CounterStatus status;
  final Counter counter;

  CounterState({@required this.status, @required this.counter});

  @override
  List<Object> get props => [status, counter.value];

  Stream<CounterState> increment() async* {
    yield counter.counting();
    yield counter.increment();
  }

  Stream<CounterState> decrement() async* {
    yield counter.counting();
    yield counter.decrement();
  }

  Stream<CounterState> getRandomFromCloudy() async* {
    yield counter.counting();
    yield await counter.getRandomFromCloudy();
  }
}
