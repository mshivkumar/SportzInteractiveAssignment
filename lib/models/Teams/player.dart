import 'package:flutter/material.dart';
import 'package:sportz_interactive_assignment/models/Teams/players.dart';

import 'batting.dart';
import 'bowling.dart';

@immutable
class Player {
  final String position;
  final String nameFull;
  final bool isCaptain;
  final bool isKeeper;
  final Batting batting;
  final Bowling bowling;

  const Player({
    required this.position,
    required this.nameFull,
    required this.isCaptain,
    required this.isKeeper,
    required this.batting,
    required this.bowling,
  });

  factory Player.fromJson(Map<String, dynamic> json) => Player(
      position: json['Position'].toString(),
      nameFull: json['Name_Full'].toString(),
      isCaptain: json['Iscaptain'],
      isKeeper: json['Iskeeper'],
      batting: Batting.fromJson(json['Batting'] as Map<String, dynamic>),
      bowling: Bowling.fromJson(json['Bowling'] as Map<String, dynamic>));

  Map<String, dynamic> toJson() => {
        'Position': position,
        'Name_Full': nameFull,
        'Iscaptain': isCaptain,
        'Iskeeper': isKeeper,
        'Batting': batting.toJson(),
        'Bowling': bowling.toJson()
      };

  factory Player.initial() => Player(
        position: '',
        nameFull: '',
        isCaptain: false,
        isKeeper: false,
        batting: Batting.initial(),
        bowling: Bowling.initial(),
      );

  @override
  List<Object> get props {
    return [
      position,
      nameFull,
      isCaptain,
      isKeeper,
      batting,
      bowling,
    ];
  }

  @override
  String toString() {
    return 'Player(position: $position, nameFull: $nameFull, isCaptain: $isCaptain, isKeeper: $isKeeper, batting: $batting, bowling: $bowling)';
  }

  Player copyWith(
          {String? position,
          String? nameFull,
          bool? isCaptain,
          bool? isKeeper,
          Batting? batting,
          Bowling? bowling}) =>
      Player(
        position: position ?? this.position,
        nameFull: nameFull ?? this.nameFull,
        isCaptain: isCaptain ?? this.isCaptain,
        isKeeper: isKeeper ?? this.isKeeper,
        batting: batting ?? this.batting,
        bowling: bowling ?? this.bowling,
      );
}
