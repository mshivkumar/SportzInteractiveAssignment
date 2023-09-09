import 'package:flutter/material.dart';

import 'player.dart';
import 'players.dart';
import 'team.dart';

@immutable
class Teams {
  final Team teamIndia;
  final Team teamNewZealand;
  final Team teamPakistan;
  final Team teamSouthAfrica;

  const Teams({
    required this.teamIndia,
    required this.teamNewZealand,
    required this.teamPakistan,
    required this.teamSouthAfrica,
  });

  static Map<String, Team> alteredMap(Map<String, dynamic> json) {
    // Create a map to store players with Position as the key
    Map<String, Team> teamsItem = {};

    json.forEach((teamKey, teamObject) {
      teamsItem[teamObject['Name_Short']] = Team(
        nameFull: teamObject['Name_Full'],
        nameShort: teamObject['Name_Short'],
        players: getPlayers(json: teamObject['Players']),
      );
    });

    return teamsItem;
  }

  factory Teams.fromJson(Map<String, Team> json) => Teams(
        teamIndia: Team.fromJson(json['IND'] as Map<String, dynamic>),
        teamNewZealand: Team.fromJson(json['NZ'] as Map<String, dynamic>),
        teamPakistan: Team.fromJson(json['PAK'] as Map<String, dynamic>),
        teamSouthAfrica: Team.fromJson(json['SA'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'IND': teamIndia.toJson(),
        'NZ': teamNewZealand.toJson(),
        'PAK': teamPakistan.toJson(),
        'SA': teamSouthAfrica.toJson(),
      };

  factory Teams.initial() => Teams(
        teamIndia: Team.initial(),
        teamNewZealand: Team.initial(),
        teamPakistan: Team.initial(),
        teamSouthAfrica: Team.initial(),
      );

  @override
  List<Object> get props {
    return [
      teamIndia,
      teamNewZealand,
      teamPakistan,
      teamSouthAfrica,
    ];
  }

  @override
  String toString() {
    return 'Teams(teamIndia: $teamIndia, teamNewZealand: $teamNewZealand, teamPakistan: $teamPakistan, teamSouthAfrica: $teamSouthAfrica)';
  }

  Teams copyWith({
    Team? teamIndia,
    Team? teamNewZealand,
    Team? teamPakistan,
    Team? teamSouthAfrica,
  }) =>
      Teams(
        teamIndia: teamIndia ?? this.teamIndia,
        teamNewZealand: teamNewZealand ?? this.teamNewZealand,
        teamPakistan: teamPakistan ?? this.teamPakistan,
        teamSouthAfrica: teamSouthAfrica ?? this.teamSouthAfrica,
      );

  static Players getPlayers({required Map<String, dynamic> json}) {
    Map<String, Player> newMap = Players.alteredMap(json);
    return Players.fromJson(newMap);
  }
}
