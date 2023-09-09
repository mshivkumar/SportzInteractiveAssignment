import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class FallofWicket extends Equatable {
  final String batsman;
  final String score;
  final String overs;

  const FallofWicket({
    required this.batsman,
    required this.score,
    required this.overs,
  });

  factory FallofWicket.fromJson(Map<String, dynamic> json) => FallofWicket(
      batsman: json['Batsman'].toString(),
      score: json['Score'].toString(),
      overs: json['Overs'].toString());

  Map<String, dynamic> toJson() =>
      {'Batsman': batsman, 'Score': score, 'Overs': overs};

  factory FallofWicket.initial() => const FallofWicket(
        batsman: '',
        score: '',
        overs: '',
      );

  @override
  List<Object> get props {
    return [
      batsman,
      score,
      overs,
    ];
  }

  @override
  String toString() {
    return 'FallofWicket(batsman: $batsman, score: $score, overs: $overs)';
  }

  FallofWicket copyWith({String? batsman, String? score, String? overs}) =>
      FallofWicket(
        batsman: batsman ?? this.batsman,
        score: score ?? this.score,
        overs: overs ?? this.overs,
      );
}
