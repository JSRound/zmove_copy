import 'package:equatable/equatable.dart';

class Trip extends Equatable {
  String name;
  DateTime startDate;
  Trip({required this.name, required this.startDate}) : super();

  @override
  List<Object> get props => [name, startDate];

  @override
  bool get stringify => true;

  factory Trip.fromJson(Map<String, dynamic> json) => Trip(name: json["name"], startDate: DateTime.parse(json["startDate"]));
  // DateTime.parse('1969-07-20 20:18:04Z'); // 8:18pm
}
