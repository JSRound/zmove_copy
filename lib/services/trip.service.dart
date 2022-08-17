import 'dart:convert';

Future<String> getTrips() {
  return Future.delayed(Duration(seconds: 1), () {
    String time = DateTime.now().add(const Duration(minutes: 1)).toIso8601String();
    Object tripsJson = [
      {"name": "Trip 1", "startDate": time}
    ];
    String tripsString = json.encode(tripsJson);
    return tripsString;
  });
}
