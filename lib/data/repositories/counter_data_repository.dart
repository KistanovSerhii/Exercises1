part of 'package:flutter_application_3/common_path/counter_repository.dart';

class CounterDataRepository extends CounterRepository {
  final ApiUtil apiUtil;

  CounterDataRepository({@required this.apiUtil});

  @override
  Future<Counter> getRandomCounter({@required int range}) {
    return apiUtil.getRandomCounter(range: range);
  }
}
