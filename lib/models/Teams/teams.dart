import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'player.dart';
import 'players.dart';
import 'team.dart';

@immutable
class Teams extends Equatable {
  final Team teamOne;
  final Team teamTwo;

  const Teams({
    required this.teamOne,
    required this.teamTwo,
  });

  static Map<String, Team> alteredMap(Map<String, dynamic> json) {
    // Create a map to store players with Position as the key
    Map<String, Team> teamsItem = {};
    int i = 0;

    json.forEach((teamKey, teamObject) {
      i++;
      teamsItem[i.toString()] = Team(
        nameFull: teamObject['Name_Full'],
        nameShort: teamObject['Name_Short'],
        players:
            getPlayers(json: teamObject['Players'] as Map<String, dynamic>),
      );
    });

    return teamsItem;
  }

  factory Teams.fromJson(Map<String, Team> json) => Teams(
        teamOne: json['1'] ?? Team.initial(),
        //Team.fromJson(json['IND'] as Map<String, dynamic>),
        teamTwo: json['2'] ?? Team.initial(),
      );

  Map<String, dynamic> toJson() => {
        '1': teamOne.toJson(),
        '2': teamTwo.toJson(),
      };

  factory Teams.initial() => Teams(
        teamOne: Team.initial(),
        teamTwo: Team.initial(),
      );

  @override
  List<Object> get props {
    return [
      teamOne,
      teamTwo,
    ];
  }

  @override
  String toString() {
    return 'Teams(teamOne: $teamOne, teamTwo: $teamTwo)';
  }

  Teams copyWith({
    Team? teamOne,
    Team? teamTwo,
  }) =>
      Teams(
        teamOne: teamOne ?? this.teamOne,
        teamTwo: teamTwo ?? this.teamTwo,
      );

  static Players getPlayers({required Map<String, dynamic> json}) {
    Map<String, Player> newMap = Players.alteredMap(json);
    return Players.fromJson(newMap);
  }
}
