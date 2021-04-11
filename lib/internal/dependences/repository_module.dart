part of 'package:flutter_application_3/common_path/module.dart';

class RepositoryModule {
  static CounterRepository counterRepository() =>
      CounterDataRepository(ApiModule.counterApiUtil());
}
