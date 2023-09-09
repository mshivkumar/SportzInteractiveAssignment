import 'package:flutter/material.dart';

import 'batting.dart';
import 'bowling.dart';
import 'player.dart';

@immutable
class Players {
  final Player playerOne;
  final Player playerTwo;
  final Player playerThree;
  final Player playerFour;
  final Player playerFive;
  final Player playerSix;
  final Player playerSeven;
  final Player playerEight;
  final Player playerNine;
  final Player playerTen;
  final Player playerEleven;

  const Players({
    required this.playerOne,
    required this.playerTwo,
    required this.playerThree,
    required this.playerFour,
    required this.playerFive,
    required this.playerSix,
    required this.playerSeven,
    required this.playerEight,
    required this.playerNine,
    required this.playerTen,
    required this.playerEleven,
  });

  static Map<String, Player> alteredMap(Map<String, dynamic> json) {
    // Create a map to store players with Position as the key
    Map<String, Player> playersItem = {};

    json.forEach((playerKey, playerObject) {
      playersItem[playerObject['Position']] = Player(
        position: playerObject['Position'],
        nameFull: playerObject['Name_Full'],
        isCaptain: playerObject['Iscaptain'],
        isKeeper: playerObject['Iskeeper'],
        batting:
            Batting.fromJson(playerObject['Batting'] as Map<String, dynamic>),
        bowling:
            Bowling.fromJson(playerObject['Bowling'] as Map<String, dynamic>),
      );
    });

    return playersItem;
  }

  factory Players.fromJson(Map<String, Player> json) => Players(
        playerOne: Player.fromJson(json['1'] as Map<String, dynamic>),
        playerTwo: Player.fromJson(json['2'] as Map<String, dynamic>),
        playerThree: Player.fromJson(json['3'] as Map<String, dynamic>),
        playerFour: Player.fromJson(json['4'] as Map<String, dynamic>),
        playerFive: Player.fromJson(json['5'] as Map<String, dynamic>),
        playerSix: Player.fromJson(json['6'] as Map<String, dynamic>),
        playerSeven: Player.fromJson(json['7'] as Map<String, dynamic>),
        playerEight: Player.fromJson(json['8'] as Map<String, dynamic>),
        playerNine: Player.fromJson(json['9'] as Map<String, dynamic>),
        playerTen: Player.fromJson(json['10'] as Map<String, dynamic>),
        playerEleven: Player.fromJson(json['12'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        '1': playerOne.toJson(),
        '2': playerTwo.toJson(),
        '3': playerThree.toJson(),
        '4': playerFour.toJson(),
        '5': playerFive.toJson(),
        '6': playerSix.toJson(),
        '7': playerSeven.toJson(),
        '8': playerEight.toJson(),
        '9': playerNine.toJson(),
        '10': playerTen.toJson(),
        '11': playerEleven.toJson()
      };

  factory Players.initial() => Players(
        playerOne: Player.initial(),
        playerTwo: Player.initial(),
        playerThree: Player.initial(),
        playerFour: Player.initial(),
        playerFive: Player.initial(),
        playerSix: Player.initial(),
        playerSeven: Player.initial(),
        playerEight: Player.initial(),
        playerNine: Player.initial(),
        playerTen: Player.initial(),
        playerEleven: Player.initial(),
      );

  @override
  List<Object> get props {
    return [
      playerOne,
      playerTwo,
      playerThree,
      playerFour,
      playerFive,
      playerSix,
      playerSeven,
      playerEight,
      playerNine,
      playerTen,
      playerEleven,
    ];
  }

  @override
  String toString() {
    return 'Players(playerOne: $playerOne, playerTwo: $playerTwo, playerThree: $playerThree, playerFour: $playerFour, playerFive: $playerFive, playerSix: $playerSix, playerSeven: $playerSeven, playerEight: $playerEight, playerNine: $playerNine, playerTen: $playerTen, playerEleven: $playerEleven)';
  }

  Players copyWith({
    Player? playerOne,
    Player? playerTwo,
    Player? playerThree,
    Player? playerFour,
    Player? playerFive,
    Player? playerSix,
    Player? playerSeven,
    Player? playerEight,
    Player? playerNine,
    Player? playerTen,
    Player? playerEleven,
  }) =>
      Players(
        playerOne: playerOne ?? this.playerOne,
        playerTwo: playerTwo ?? this.playerTwo,
        playerThree: playerThree ?? this.playerThree,
        playerFour: playerFour ?? this.playerFour,
        playerFive: playerFive ?? this.playerFive,
        playerSix: playerSix ?? this.playerSix,
        playerSeven: playerSeven ?? this.playerSeven,
        playerEight: playerEight ?? this.playerEight,
        playerNine: playerNine ?? this.playerNine,
        playerTen: playerTen ?? this.playerTen,
        playerEleven: playerEleven ?? this.playerEleven,
      );
}
