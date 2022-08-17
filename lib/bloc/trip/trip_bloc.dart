import 'package:bloc/bloc.dart';
import '../../models/trip.model.dart';

part 'trip_event.dart';
part 'trip_state.dart';

class TripBloc extends Bloc<TripEvent, TripState> {
  TripBloc() : super(TripState(trips: [])) {
    on<UpdateTrips>((event, emit) {
      var newState = state.copyWith(trips: event.trips);
      emit(newState);
    });
  }
}
