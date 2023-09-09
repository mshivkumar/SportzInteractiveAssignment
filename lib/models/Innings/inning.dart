import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'batsman.dart';
import 'bowler.dart';
import 'fall_of_wicket.dart';
import 'partnership_current.dart';
import 'power_play.dart';

@immutable
class Inning extends Equatable {
  final String number;
  final String battingteam;
  final String total;
  final String wickets;
  final String overs;
  final String runrate;
  final String byes;
  final String legbyes;
  final String wides;
  final String noballs;
  final String penalty;
  final String allottedOvers;
  final String target;
  final List<Batsman> batsmen;
  final PartnershipCurrent partnershipCurrent;
  final List<Bowler> bowlers;
  final List<FallofWicket> fallofWickets;
  final PowerPlay powerPlay;

  const Inning({
    required this.number,
    required this.battingteam,
    required this.total,
    required this.wickets,
    required this.overs,
    required this.runrate,
    required this.byes,
    required this.legbyes,
    required this.wides,
    required this.noballs,
    required this.penalty,
    required this.allottedOvers,
    required this.target,
    required this.batsmen,
    required this.partnershipCurrent,
    required this.bowlers,
    required this.fallofWickets,
    required this.powerPlay,
  });

  factory Inning.fromJson(Map<String, dynamic> json) => Inning(
      number: json['Number'].toString(),
      battingteam: json['Battingteam'].toString(),
      total: json['Total'].toString(),
      wickets: json['Wickets'].toString(),
      overs: json['Overs'].toString(),
      runrate: json['Runrate'].toString(),
      byes: json['Byes'].toString(),
      legbyes: json['Legbyes'].toString(),
      wides: json['Wides'].toString(),
      noballs: json['Noballs'].toString(),
      penalty: json['Penalty'].toString(),
      allottedOvers: json['AllottedOvers'].toString(),
      target: json['Target'].toString(),
      batsmen: (json['Batsmen'] as List? ?? [])
          .map((e) => Batsman.fromJson(e as Map<String, dynamic>))
          .toList(),
      partnershipCurrent: PartnershipCurrent.fromJson(
          json['Partnership_Current'] as Map<String, dynamic>),
      bowlers: (json['Bowlers'] as List? ?? [])
          .map((e) => Bowler.fromJson(e as Map<String, dynamic>))
          .toList(),
      fallofWickets: (json['FallofWickets'] as List? ?? [])
          .map((e) => FallofWicket.fromJson(e as Map<String, dynamic>))
          .toList(),
      powerPlay: PowerPlay.fromJson(json['PowerPlay'] as Map<String, dynamic>));

  Map<String, dynamic> toJson() => {
        'Number': number,
        'Battingteam': battingteam,
        'Total': total,
        'Wickets': wickets,
        'Overs': overs,
        'Runrate': runrate,
        'Byes': byes,
        'Legbyes': legbyes,
        'Wides': wides,
        'Noballs': noballs,
        'Penalty': penalty,
        'AllottedOvers': allottedOvers,
        'Target': target,
        'Batsmen': batsmen.map((e) => e.toJson()).toList(),
        'Partnership_Current': partnershipCurrent.toJson(),
        'Bowlers': bowlers.map((e) => e.toJson()).toList(),
        'FallofWickets': fallofWickets.map((e) => e.toJson()).toList(),
        'PowerPlay': powerPlay.toJson()
      };

  factory Inning.initial() => Inning(
        number: '',
        battingteam: '',
        total: '',
        wickets: '',
        overs: '',
        runrate: '',
        byes: '',
        legbyes: '',
        wides: '',
        noballs: '',
        penalty: '',
        allottedOvers: '',
        target: '',
        batsmen: [],
        partnershipCurrent: PartnershipCurrent.initial(),
        bowlers: [],
        fallofWickets: [],
        powerPlay: PowerPlay.initial(),
      );

  @override
  List<Object> get props {
    return [
      number,
      battingteam,
      total,
      wickets,
      overs,
      runrate,
      byes,
      legbyes,
      wides,
      noballs,
      penalty,
      allottedOvers,
      target,
      batsmen,
      partnershipCurrent,
      bowlers,
      fallofWickets,
      powerPlay,
    ];
  }

  @override
  String toString() {
    return 'Inning(number: $number, battingteam: $battingteam, total: $total, wickets: $wickets, overs: $overs, runrate: $runrate, byes: $byes, legbyes: $legbyes, wides: $wides, noballs: $noballs, penalty: $penalty, allottedOvers: $allottedOvers, target: $target, batsmen: $batsmen, partnershipCurrent: $partnershipCurrent, bowlers: $bowlers, fallofWickets: $fallofWickets, powerPlay: $powerPlay)';
  }

  Inning copyWith({
    String? number,
    String? battingteam,
    String? total,
    String? wickets,
    String? overs,
    String? runrate,
    String? byes,
    String? legbyes,
    String? wides,
    String? noballs,
    String? penalty,
    String? allottedOvers,
    String? target,
    List<Batsman>? batsmen,
    PartnershipCurrent? partnershipCurrent,
    List<Bowler>? bowlers,
    List<FallofWicket>? fallofWickets,
    PowerPlay? powerPlay,
  }) =>
      Inning(
        number: number ?? this.number,
        battingteam: battingteam ?? this.battingteam,
        total: total ?? this.total,
        wickets: wickets ?? this.wickets,
        overs: overs ?? this.overs,
        runrate: runrate ?? this.runrate,
        byes: byes ?? this.byes,
        legbyes: legbyes ?? this.legbyes,
        wides: wides ?? this.wides,
        noballs: noballs ?? this.noballs,
        penalty: penalty ?? this.penalty,
        allottedOvers: allottedOvers ?? this.allottedOvers,
        target: target ?? this.target,
        batsmen: batsmen ?? this.batsmen,
        partnershipCurrent: partnershipCurrent ?? this.partnershipCurrent,
        bowlers: bowlers ?? this.bowlers,
        fallofWickets: fallofWickets ?? this.fallofWickets,
        powerPlay: powerPlay ?? this.powerPlay,
      );
}
