import 'package:flutter/material.dart';

import 'batsman.dart';

@immutable
class PartnershipCurrent {
  final String runs;
  final String balls;
  final List<Batsman> batsmen;

  const PartnershipCurrent({
    required this.runs,
    required this.balls,
    required this.batsmen,
  });

  factory PartnershipCurrent.fromJson(Map<String, dynamic> json) =>
      PartnershipCurrent(
          runs: json['Runs'].toString(),
          balls: json['Balls'].toString(),
          batsmen: (json['Batsmen'] as List? ?? [])
              .map((e) => Batsman.fromJson(e as Map<String, dynamic>))
              .toList());

  Map<String, dynamic> toJson() => {
        'Runs': runs,
        'Balls': balls,
        'Batsmen': batsmen.map((e) => e.toJson()).toList()
      };

  factory PartnershipCurrent.initial() => const PartnershipCurrent(
        runs: '',
        balls: '',
        batsmen: [],
      );

  @override
  List<Object> get props {
    return [
      runs,
      balls,
      batsmen,
    ];
  }

  @override
  String toString() {
    return 'PartnershipCurrent(runs: $runs, balls: $balls, batsmen: $batsmen)';
  }

  PartnershipCurrent copyWith({
    String? runs,
    String? balls,
    List<Batsman>? batsmen,
  }) =>
      PartnershipCurrent(
        runs: runs ?? this.runs,
        balls: balls ?? this.balls,
        batsmen: batsmen ?? this.batsmen,
      );
}
