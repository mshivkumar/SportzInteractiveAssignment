import 'package:flutter/material.dart';
import 'player.dart';
import 'players.dart';

@immutable
class Team {
  final String nameFull;
  final String nameShort;
  final Players players;

  const Team({
    required this.nameFull,
    required this.nameShort,
    required this.players,
  });

  factory Team.fromJson(Map<String, dynamic> json) => Team(
      nameFull: json['Name_Full'].toString(),
      nameShort: json['Name_Short'].toString(),
      players: Players.fromJson(json['Players'] as Map<String, Player>));

  Map<String, dynamic> toJson() => {
        'Name_Full': nameFull,
        'Name_Short': nameShort,
        'Players': players.toJson()
      };

  factory Team.initial() => Team(
        nameFull: '',
        nameShort: '',
        players: Players.initial(),
      );

  @override
  List<Object> get props {
    return [
      nameFull,
      nameShort,
      players,
    ];
  }

  @override
  String toString() {
    return 'Team(nameFull: $nameFull, nameShort: $nameShort, players: $players)';
  }

  Team copyWith({String? nameFull, String? nameShort, Players? players}) =>
      Team(
        nameFull: nameFull ?? this.nameFull,
        nameShort: nameShort ?? this.nameShort,
        players: players ?? this.players,
      );
}
