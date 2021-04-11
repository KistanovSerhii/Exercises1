import 'package:flutter/cupertino.dart';

class RequestBodyRandomCounter {
  final int range;

  RequestBodyRandomCounter({@required this.range});

  Map<String, dynamic> toApi() {
    return {
      'length': 1, //range,
      'uint': 8,
    };
  }
}
