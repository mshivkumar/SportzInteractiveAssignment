import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class PowerPlay extends Equatable {
  final String pP1;
  final String pP2;

  const PowerPlay({
    required this.pP1,
    required this.pP2,
  });

  factory PowerPlay.fromJson(Map<String, dynamic> json) =>
      PowerPlay(pP1: json['PP1'].toString(), pP2: json['PP2'].toString());

  Map<String, dynamic> toJson() => {'PP1': pP1, 'PP2': pP2};

  factory PowerPlay.initial() => const PowerPlay(pP1: '', pP2: '');

  @override
  List<Object> get props {
    return [pP1, pP2];
  }

  @override
  String toString() {
    return 'PowerPlay(pP1: $pP1, pP2: $pP2)';
  }

  PowerPlay copyWith({String? pP1, String? pP2}) => PowerPlay(
        pP1: pP1 ?? this.pP1,
        pP2: pP2 ?? this.pP2,
      );
}
