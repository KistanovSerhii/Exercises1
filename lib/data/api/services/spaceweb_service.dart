import 'package:dio/dio.dart';
import 'package:flutter_application_3/data/api/respond/filter_random_counter.dart';
import 'package:flutter_application_3/data/api/request/body_random_counter.dart';

class SpacewebService {
  static const _BASE_URL = 'qrng.anu.edu.au'; // length=1&type=uint8

  final Dio dio = Dio(
      //BaseOptions(baseUrl: _BASE_URL),
      );

  Future<FilterRandomCounter> getRandomCounter(
      RequestBodyRandomCounter body) async {
    // http://qrng.anu.edu.au/API/jsonI.php?length=1&type=uint8
    final response = await dio
        .get("http://qrng.anu.edu.au/API/jsonI.php?length=1&type=uint8");
    /* final response = await dio.get(path:'/API/jsonI.php',
      queryParameters: body.toApi(),
    );*/
    // dio.get('/test', queryParameters: {'id': 12, 'name': 'wendu'})
    // dio.get('https://www.google.com')
    return FilterRandomCounter.fromApi(response.data);
  }
}
