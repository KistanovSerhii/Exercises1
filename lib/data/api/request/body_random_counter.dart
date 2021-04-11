import 'package:flutter/cupertino.dart';

class RequestBodyRandomCounter {
  final int range;

  RequestBodyRandomCounter({@required this.range});

  Map<String, dynamic> toApi() {
    return {
      'randomRange': range,
      'formatted': 0,
    };
  }
}
