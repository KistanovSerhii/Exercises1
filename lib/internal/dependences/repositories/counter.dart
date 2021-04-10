import 'package:flutter/cupertino.dart';
import 'package:flutter_application_3/data/api/cloud_computing_api.dart';
import 'package:flutter_application_3/data/services/services.dart';
import 'package:flutter_application_3/internal/dependences/lib_references/counter_references.dart';

class CounterRepositoryModule {
  static Counter getCloudComputing(
      {@required int countStep, @required int currentValue}) {
    return CloudComputingApi.getCloudComputing(
        countStep: countStep,
        currentValue: currentValue,
        service: CloudComputingService());
  }
}
