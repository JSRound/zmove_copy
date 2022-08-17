import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import './bloc/blocs.dart';
import './screens/home.dart';
import './screens/trips.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<TripBloc>(create: (_) => TripBloc()),
        ],
        child: MaterialApp(title: 'my app', home: HomePage(), routes: {
          '/home': (context) => HomePage(),
          '/trips': (context) => TripsPage(),
        }));
  }
}
