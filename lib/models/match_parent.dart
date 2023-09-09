import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'Innings/inning.dart';
import 'MatchDetails/match_detail.dart';
import 'Teams/team.dart';
import 'Teams/teams.dart';

@immutable
class MatchParent extends Equatable {
  final Matchdetail matchdetail;
  final List<String> nuggets;
  final List<Inning> innings;
  final Teams teams;

  const MatchParent({
    required this.matchdetail,
    required this.nuggets,
    required this.innings,
    required this.teams,
  });

  factory MatchParent.fromJson(Map<String, dynamic> json) => MatchParent(
        matchdetail:
            Matchdetail.fromJson(json['Matchdetail'] as Map<String, dynamic>),
        nuggets:
            (json['Nuggets'] as List? ?? []).map((e) => e as String).toList(),
        innings: (json['Innings'] as List? ?? [])
            .map((e) => Inning.fromJson(e as Map<String, dynamic>))
            .toList(),
        teams: getTeams(json: json['Teams'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'Matchdetail': matchdetail.toJson(),
        'Nuggets': nuggets.map((e) => e.toString()).toList(),
        'Innings': innings.map((e) => e.toJson()).toList(),
        'Teams': teams.toJson(),
      };

  factory MatchParent.initial() => MatchParent(
        matchdetail: Matchdetail.initial(),
        nuggets: const [],
        innings: const [],
        teams: Teams.initial(),
      );

  @override
  List<Object> get props {
    return [
      matchdetail,
      nuggets,
      innings,
      teams,
    ];
  }

  @override
  String toString() {
    return 'MatchParent(matchdetail: $matchdetail, nuggets: $nuggets, innings: $innings, teams: $teams)';
  }

  MatchParent copyWith({
    Matchdetail? matchdetail,
    List<String>? nuggets,
    List<Inning>? innings,
    Teams? teams,
  }) =>
      MatchParent(
        matchdetail: matchdetail ?? this.matchdetail,
        nuggets: nuggets ?? this.nuggets,
        innings: innings ?? this.innings,
        teams: teams ?? this.teams,
      );

  static Teams getTeams({required Map<String, dynamic> json}) {
    Map<String, Team> newMap = Teams.alteredMap(json);
    return Teams.fromJson(newMap);
  }
}
