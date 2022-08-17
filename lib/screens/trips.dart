import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/blocs.dart';
import '../models/trip.model.dart';

class TripsPage extends StatelessWidget {
  const TripsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('My Trips')), body: TripsPageView());
  }
}

class TripsPageView extends StatelessWidget {
  const TripsPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TripBloc, TripState>(builder: (context, state) {
      return Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [
        for (Trip item in state.trips) TripCard(trip: item),
      ]);
    });
  }
}

class TripCard extends StatelessWidget {
  late Trip trip;
  TripCard({Key? key, required Trip trip}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [
      Text(trip.name),
      Text('${trip.startDate}'),
    ]));
  }
}
