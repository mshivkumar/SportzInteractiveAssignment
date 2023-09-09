import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class Batting extends Equatable {
  final String style;
  final String average;
  final String strikerate;
  final String runs;

  const Batting({
    required this.style,
    required this.average,
    required this.strikerate,
    required this.runs,
  });

  factory Batting.fromJson(Map<String, dynamic> json) => Batting(
      style: json['Style'].toString(),
      average: json['Average'].toString(),
      strikerate: json['Strikerate'].toString(),
      runs: json['Runs'].toString());

  Map<String, dynamic> toJson() => {
        'Style': style,
        'Average': average,
        'Strikerate': strikerate,
        'Runs': runs
      };

  factory Batting.initial() => const Batting(
        style: '',
        average: '',
        strikerate: '',
        runs: '',
      );

  @override
  List<Object> get props {
    return [
      style,
      average,
      strikerate,
      runs,
    ];
  }

  @override
  String toString() {
    return 'Batting(style: $style, average: $average, strikerate: $strikerate, runs: $runs)';
  }

  Batting copyWith(
          {String? style, String? average, String? strikerate, String? runs}) =>
      Batting(
        style: style ?? this.style,
        average: average ?? this.average,
        strikerate: strikerate ?? this.strikerate,
        runs: runs ?? this.runs,
      );
}
