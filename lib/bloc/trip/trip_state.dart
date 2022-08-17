part of 'trip_bloc.dart';

class TripState {
  List<Trip> trips;
  TripState({required this.trips});

  TripState copyWith({List<Trip>? trips}) => TripState(trips: trips ?? this.trips);
}
