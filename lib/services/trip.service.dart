Future<List<Map<String, dynamic>>> getTrips() {
  return Future.delayed(Duration(seconds: 1), () {
    return [
      {"name": "Trip 1", "date": DateTime.now()..add(const Duration(minutes: 1)).toIso8601String()}
    ];
  });
}
