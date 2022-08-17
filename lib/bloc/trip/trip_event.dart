part of 'trip_bloc.dart';

abstract class TripEvent {}

class UpdateTrips extends TripEvent {
  final List<Trip> trips;
  UpdateTrips(this.trips);
}
