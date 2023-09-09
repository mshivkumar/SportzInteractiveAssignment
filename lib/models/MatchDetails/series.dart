import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class Series extends Equatable {
  final String id;
  final String name;
  final String status;
  final String tour;
  final String tourName;

  const Series({
    required this.id,
    required this.name,
    required this.status,
    required this.tour,
    required this.tourName,
  });

  factory Series.fromJson(Map<String, dynamic> json) => Series(
      id: json['Id'].toString(),
      name: json['Name'].toString(),
      status: json['Status'].toString(),
      tour: json['Tour'].toString(),
      tourName: json['Tour_Name'].toString());

  Map<String, dynamic> toJson() => {
        'Id': id,
        'Name': name,
        'Status': status,
        'Tour': tour,
        'Tour_Name': tourName
      };

  factory Series.initial() => const Series(
        id: '',
        name: '',
        status: '',
        tour: '',
        tourName: '',
      );

  @override
  List<Object> get props {
    return [
      id,
      name,
      status,
      tour,
      tourName,
    ];
  }

  @override
  String toString() {
    return 'Series(id: $id, name: $name, status: $status, tour: $tour, tourName: $tourName)';
  }

  Series copyWith({
    String? id,
    String? name,
    String? status,
    String? tour,
    String? tourName,
  }) =>
      Series(
        id: id ?? this.id,
        name: name ?? this.name,
        status: status ?? this.status,
        tour: tour ?? this.tour,
        tourName: tourName ?? this.tourName,
      );
}
