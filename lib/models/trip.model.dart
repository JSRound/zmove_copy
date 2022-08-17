import 'dart:convert';

import 'package:equatable/equatable.dart';

List<Trip> tripsFromString(String str) => List<Trip>.from(json.decode(str).map((x) {
      return Trip.fromJson(x);
    }));
String tripsToString(List<Trip> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Trip extends Equatable {
  String name;
  DateTime startDate;
  Trip({required this.name, required this.startDate}) : super();

  @override
  List<Object> get props => [name, startDate];

  @override
  bool get stringify => true;

  factory Trip.fromJson(Map<String, dynamic> json) {
    DateTime time = DateTime.parse(json["startDate"]);
    return Trip(name: json["name"], startDate: time);
  }
  // DateTime.parse('1969-07-20 20:18:04Z'); // 8:18pm
  Map<String, dynamic> toJson() => {'name': name, 'startDate': startDate.toIso8601String()};
}
