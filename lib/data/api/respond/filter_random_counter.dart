class FilterRandomCounter {
  final num randomNum;

  FilterRandomCounter.fromApi(Map<String, dynamic> map)
      : randomNum = map['results']['randomNum'];
}
