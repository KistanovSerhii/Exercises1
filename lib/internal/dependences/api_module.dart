part of 'package:flutter_application_3/common_path/module.dart';

class ApiModule {
  static ApiUtil counterApiUtil() => CounterApiUtil(SpacewebService());
}
