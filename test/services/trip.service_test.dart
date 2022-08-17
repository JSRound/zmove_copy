import 'dart:convert';

import 'package:test/test.dart';

import 'package:zmove_copy/services/trip.service.dart' as TripService;
import 'package:zmove_copy/models/trip.model.dart';

void main() {
  group('TripService', () {
    test('getTrips', () async {
      var jsonString = await TripService.getTrips();
      var tripsJson = json.encode(jsonString);
      var trips = tripsFromJson(tripsJson);
      DateTime now = DateTime.now();
      print(trips);
      expect(trips[0].name, 'Trip 1');
      expect(trips[0].startDate.minute, now.minute);
    });
  });
}
