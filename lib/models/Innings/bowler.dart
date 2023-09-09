import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class Bowler extends Equatable {
  final String bowler;
  final String overs;
  final String maidens;
  final String runs;
  final String wickets;
  final String economyrate;
  final String noballs;
  final String wides;
  final String dots;

  const Bowler({
    required this.bowler,
    required this.overs,
    required this.maidens,
    required this.runs,
    required this.wickets,
    required this.economyrate,
    required this.noballs,
    required this.wides,
    required this.dots,
  });

  factory Bowler.fromJson(Map<String, dynamic> json) => Bowler(
      bowler: json['Bowler'].toString(),
      overs: json['Overs'].toString(),
      maidens: json['Maidens'].toString(),
      runs: json['Runs'].toString(),
      wickets: json['Wickets'].toString(),
      economyrate: json['Economyrate'].toString(),
      noballs: json['Noballs'].toString(),
      wides: json['Wides'].toString(),
      dots: json['Dots'].toString());

  Map<String, dynamic> toJson() => {
        'Bowler': bowler,
        'Overs': overs,
        'Maidens': maidens,
        'Runs': runs,
        'Wickets': wickets,
        'Economyrate': economyrate,
        'Noballs': noballs,
        'Wides': wides,
        'Dots': dots
      };

  factory Bowler.initial() => const Bowler(
        bowler: '',
        overs: '',
        maidens: '',
        runs: '',
        wickets: '',
        economyrate: '',
        noballs: '',
        wides: '',
        dots: '',
      );

  @override
  List<Object> get props {
    return [
      bowler,
      overs,
      maidens,
      runs,
      wickets,
      economyrate,
      noballs,
      wides,
      dots,
    ];
  }

  @override
  String toString() {
    return 'Bowler(bowler: $bowler, overs: $overs, maidens: $maidens, runs: $runs, wickets: $wickets, economyrate: $economyrate, noballs: $noballs, wides: $wides, dots: $dots)';
  }

  Bowler copyWith({
    String? bowler,
    String? overs,
    String? maidens,
    String? runs,
    String? wickets,
    String? economyrate,
    String? noballs,
    String? wides,
    String? dots,
  }) =>
      Bowler(
        bowler: bowler ?? this.bowler,
        overs: overs ?? this.overs,
        maidens: maidens ?? this.maidens,
        runs: runs ?? this.runs,
        wickets: wickets ?? this.wickets,
        economyrate: economyrate ?? this.economyrate,
        noballs: noballs ?? this.noballs,
        wides: wides ?? this.wides,
        dots: dots ?? this.dots,
      );
}
