import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class Match extends Equatable {
  final String id;
  final String livecoverage;
  final String code;
  final String league;
  final String number;
  final String type;
  final String date;
  final String time;
  final String offset;
  final String daynight;

  const Match({
    required this.id,
    required this.livecoverage,
    required this.code,
    required this.league,
    required this.number,
    required this.type,
    required this.date,
    required this.time,
    required this.offset,
    required this.daynight,
  });

  factory Match.fromJson(Map<String, dynamic> json) => Match(
      livecoverage: json['Livecoverage'].toString(),
      id: json['Id'].toString(),
      code: json['Code'].toString(),
      league: json['League'].toString(),
      number: json['Number'].toString(),
      type: json['Type'].toString(),
      date: json['Date'].toString(),
      time: json['Time'].toString(),
      offset: json['Offset'].toString(),
      daynight: json['Daynight'].toString());

  Map<String, dynamic> toJson() => {
        'Livecoverage': livecoverage,
        'Id': id,
        'Code': code,
        'League': league,
        'Number': number,
        'Type': type,
        'Date': date,
        'Time': time,
        'Offset': offset,
        'Daynight': daynight
      };

  factory Match.initial() => const Match(
        livecoverage: '',
        id: '',
        code: '',
        league: '',
        number: '',
        type: '',
        date: '',
        time: '',
        offset: '',
        daynight: '',
      );

  @override
  List<Object> get props {
    return [
      livecoverage,
      id,
      code,
      league,
      number,
      type,
      date,
      time,
      offset,
      daynight,
    ];
  }

  @override
  String toString() {
    return 'Match(livecoverage: $livecoverage, id: $id, code: $code, league: $league, number: $number, type: $type, date: $date, time: $time, offset: $offset, daynight: $daynight)';
  }

  Match copyWith({
    String? livecoverage,
    String? id,
    String? code,
    String? league,
    String? number,
    String? type,
    String? date,
    String? time,
    String? offset,
    String? daynight,
  }) =>
      Match(
        livecoverage: livecoverage ?? this.livecoverage,
        id: id ?? this.id,
        code: code ?? this.code,
        league: league ?? this.league,
        number: number ?? this.number,
        type: type ?? this.type,
        date: date ?? this.date,
        time: time ?? this.time,
        offset: offset ?? this.offset,
        daynight: daynight ?? this.daynight,
      );
}
