import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../services/trip.service.dart' as TripService;
import '../bloc/blocs.dart';
import '../models/trip.model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Load Trips')), body: HomePageView());
  }
}

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
      child: Text('Load Trips'),
      onPressed: () async {
        await loadTrips(context);
        Navigator.pushNamed(context, 'trips');
      },
    ));
  }

  loadTrips(context) async {
    var response = await TripService.getTrips();
    final tripBloc = BlocProvider.of<TripBloc>(context, listen: false);
    tripBloc.add(UpdateTrips(tripsFromString(response)));
  }
}
