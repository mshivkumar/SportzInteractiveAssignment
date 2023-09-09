import 'package:flutter/material.dart';

import 'match.dart';
import 'officials.dart';
import 'series.dart';
import 'venue.dart';

@immutable
class Matchdetail {
  final String teamHome;
  final String teamAway;
  final Match match;
  final Series series;
  final Venue venue;
  final Officials officials;
  final String weather;
  final String tosswonby;
  final String status;
  final String statusId;
  final String playerMatch;
  final String result;
  final String winningteam;
  final String winmargin;
  final String equation;

  const Matchdetail({
    required this.teamHome,
    required this.teamAway,
    required this.match,
    required this.series,
    required this.venue,
    required this.officials,
    required this.weather,
    required this.tosswonby,
    required this.status,
    required this.statusId,
    required this.playerMatch,
    required this.result,
    required this.winningteam,
    required this.winmargin,
    required this.equation,
  });

  factory Matchdetail.fromJson(Map<String, dynamic> json) => Matchdetail(
      teamHome: json['Team_Home'].toString(),
      teamAway: json['Team_Away'].toString(),
      match: Match.fromJson(json['Match'] as Map<String, dynamic>),
      series: Series.fromJson(json['Series'] as Map<String, dynamic>),
      venue: Venue.fromJson(json['Venue'] as Map<String, dynamic>),
      officials: Officials.fromJson(json['Officials'] as Map<String, dynamic>),
      weather: json['Weather'].toString(),
      tosswonby: json['Tosswonby'].toString(),
      status: json['Status'].toString(),
      statusId: json['Status_Id'].toString(),
      playerMatch: json['Player_Match'].toString(),
      result: json['Result'].toString(),
      winningteam: json['Winningteam'].toString(),
      winmargin: json['Winmargin'].toString(),
      equation: json['Equation'].toString());

  Map<String, dynamic> toJson() => {
        'Team_Home': teamHome,
        'Team_Away': teamAway,
        'Match': match.toJson(),
        'Series': series.toJson(),
        'Venue': venue.toJson(),
        'Officials': officials.toJson(),
        'Weather': weather,
        'Tosswonby': tosswonby,
        'Status': status,
        'Status_Id': statusId,
        'Player_Match': playerMatch,
        'Result': result,
        'Winningteam': winningteam,
        'Winmargin': winmargin,
        'Equation': equation
      };

  factory Matchdetail.initial() => Matchdetail(
        teamHome: '',
        teamAway: '',
        match: Match.initial(),
        series: Series.initial(),
        venue: Venue.initial(),
        officials: Officials.initial(),
        weather: '',
        tosswonby: '',
        status: '',
        statusId: '',
        playerMatch: '',
        result: '',
        winningteam: '',
        winmargin: '',
        equation: '',
      );

  @override
  List<Object> get props {
    return [
      teamHome,
      teamAway,
      match,
      series,
      venue,
      officials,
      weather,
      tosswonby,
      status,
      statusId,
      playerMatch,
      result,
      winningteam,
      winmargin,
      equation,
    ];
  }

  @override
  String toString() {
    return 'Matchdetail(teamHome: $teamHome, teamAway: $teamAway, match: $match, series: $series, venue: $venue, officials: $officials, weather: $weather, tosswonby: $tosswonby, status: $status, statusId: $statusId, playerMatch: $playerMatch, result: $result, winningteam: $winningteam, winmargin: $winmargin, equation: $equation)';
  }

  Matchdetail copyWith(
          {String? teamHome,
          String? teamAway,
          Match? match,
          Series? series,
          Venue? venue,
          Officials? officials,
          String? weather,
          String? tosswonby,
          String? status,
          String? statusId,
          String? playerMatch,
          String? result,
          String? winningteam,
          String? winmargin,
          String? equation}) =>
      Matchdetail(
        teamHome: teamHome ?? this.teamHome,
        teamAway: teamAway ?? this.teamAway,
        match: match ?? this.match,
        series: series ?? this.series,
        venue: venue ?? this.venue,
        officials: officials ?? this.officials,
        weather: weather ?? this.weather,
        tosswonby: tosswonby ?? this.tosswonby,
        status: status ?? this.status,
        statusId: statusId ?? this.statusId,
        playerMatch: playerMatch ?? this.playerMatch,
        result: result ?? this.result,
        winningteam: winningteam ?? this.winningteam,
        winmargin: winmargin ?? this.winmargin,
        equation: equation ?? this.equation,
      );
}
