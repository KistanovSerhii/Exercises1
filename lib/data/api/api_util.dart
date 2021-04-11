import 'package:flutter/cupertino.dart';
import 'package:flutter_application_3/common_path/counter.dart';
import 'package:flutter_application_3/common_path/counter_repository.dart';

import 'package:flutter_application_3/data/api/services/services.dart';

abstract class ApiUtil {}

class CounterApiUtil extends ApiUtil {
  final SpacewebService spacewebService;

  CounterApiUtil(this.spacewebService);

  Future<Counter> getRandomCounter({@required int range}) async {
    final body = GetCounterBody(range: range);
    final result = await spacewebService.getRandomCounter(body);
    return CounterMapper.fromApi(result);
  }
}
