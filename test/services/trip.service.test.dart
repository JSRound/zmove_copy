import 'package:test/test.dart';

import 'package:zmove_copy/services/trip.service.dart' as TripService;

void main() {
  group('TripService', () {
    test('getTrips', () async {
      var result = await TripService.getTrips();
      print(result);
      expect(true, true);
    });
  });
}
