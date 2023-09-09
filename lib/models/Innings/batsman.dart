import 'package:flutter/material.dart';

@immutable
class Batsman {
  final String batsman;
  final String runs;
  final String balls;
  final String fours;
  final String sixes;
  final String dots;
  final String strikerate;
  final String dismissal;
  final String howout;
  final String bowler;
  final String fielder;

  const Batsman({
    required this.batsman,
    required this.runs,
    required this.balls,
    required this.fours,
    required this.sixes,
    required this.dots,
    required this.strikerate,
    required this.dismissal,
    required this.howout,
    required this.bowler,
    required this.fielder,
  });

  factory Batsman.fromJson(Map<String, dynamic> json) => Batsman(
        batsman: json['Batsman'].toString(),
        runs: json['Runs'].toString(),
        balls: json['Balls'].toString(),
        fours: json['Fours'].toString(),
        sixes: json['Sixes'].toString(),
        dots: json['Dots'].toString(),
        strikerate: json['Strikerate'].toString(),
        dismissal: json['Dismissal'].toString(),
        howout: json['Howout'].toString(),
        bowler: json['Bowler'].toString(),
        fielder: json['Fielder'].toString(),
      );

  Map<String, dynamic> toJson() => {
        'Batsman': batsman,
        'Runs': runs,
        'Balls': balls,
        'Fours': fours,
        'Sixes': sixes,
        'Dots': dots,
        'Strikerate': strikerate,
        'Dismissal': dismissal,
        'Howout': howout,
        'Bowler': bowler,
        'Fielder': fielder
      };

  factory Batsman.initial() => const Batsman(
        batsman: '',
        runs: '',
        balls: '',
        fours: '',
        sixes: '',
        dots: '',
        strikerate: '',
        dismissal: '',
        howout: '',
        bowler: '',
        fielder: '',
      );

  @override
  List<Object> get props {
    return [
      batsman,
      runs,
      balls,
      fours,
      sixes,
      dots,
      strikerate,
      dismissal,
      howout,
      bowler,
      fielder,
    ];
  }

  @override
  String toString() {
    return 'Batsman(batsman: $batsman, runs: $runs, balls: $balls, fours: $fours, sixes: $sixes, dots: $dots, strikerate: $strikerate, dismissal: $dismissal, howout: $howout, bowler: $bowler, fielder: $fielder)';
  }

  Batsman copyWith({
    String? batsman,
    String? runs,
    String? balls,
    String? fours,
    String? sixes,
    String? dots,
    String? strikerate,
    String? dismissal,
    String? howout,
    String? bowler,
    String? fielder,
  }) =>
      Batsman(
        batsman: batsman ?? this.batsman,
        runs: runs ?? this.runs,
        balls: balls ?? this.balls,
        fours: fours ?? this.fours,
        sixes: sixes ?? this.sixes,
        dots: dots ?? this.dots,
        strikerate: strikerate ?? this.strikerate,
        dismissal: dismissal ?? this.dismissal,
        howout: howout ?? this.howout,
        bowler: bowler ?? this.bowler,
        fielder: fielder ?? this.fielder,
      );
}
