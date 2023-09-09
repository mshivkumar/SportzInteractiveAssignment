import 'package:flutter/material.dart';

@immutable
class Bowling {
  final String style;
  final String average;
  final String economyrate;
  final String wickets;

  const Bowling({
    required this.style,
    required this.average,
    required this.economyrate,
    required this.wickets,
  });

  factory Bowling.fromJson(Map<String, dynamic> json) => Bowling(
      style: json['Style'].toString(),
      average: json['Average'].toString(),
      economyrate: json['Economyrate'].toString(),
      wickets: json['Wickets'].toString());

  Map<String, dynamic> toJson() => {
        'Style': style,
        'Average': average,
        'Economyrate': economyrate,
        'Wickets': wickets
      };

  factory Bowling.initial() => const Bowling(
        style: '',
        average: '',
        economyrate: '',
        wickets: '',
      );

  @override
  List<Object> get props {
    return [
      style,
      average,
      economyrate,
      wickets,
    ];
  }

  @override
  String toString() {
    return 'Bowling(style: $style, average: $average, economyrate: $economyrate, wickets: $wickets)';
  }

  Bowling copyWith({
    String? style,
    String? average,
    String? economyrate,
    String? wickets,
  }) =>
      Bowling(
        style: style ?? this.style,
        average: average ?? this.average,
        economyrate: economyrate ?? this.economyrate,
        wickets: wickets ?? this.wickets,
      );
}
