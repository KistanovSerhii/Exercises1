part of 'package:flutter_application_3/common_path/counter_repository.dart';

abstract class CounterRepository {
  Future<Counter> getRandomCounter({@required int range});
}
