import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_3/data/mappers/counter_mapper.dart';
import 'package:flutter_application_3/domain/models/counter.dart';
import 'package:flutter_application_3/data/api/services/spaceweb_service.dart';
import 'package:flutter_application_3/data/api/request/body_random_counter.dart';

class CounterApiUtil {
  final SpacewebService spacewebService;

  CounterApiUtil(this.spacewebService);

  Future<Counter> getRandomCounter({@required int range}) async {
    var rng = new Random();
    return Counter(value: rng.nextInt(100));

/*
    final body = RequestBodyRandomCounter(range: range);
    final resultFiltered = await spacewebService.getRandomCounter(body);
    return CounterMapper.fromApi(resultFiltered);
*/
  }
}
