import 'package:flutter/material.dart';

import '../services/trip.service.dart';

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
      onPressed: () {
        Navigator.pushNamed(context, 'trips');
      },
    ));
  }
}
