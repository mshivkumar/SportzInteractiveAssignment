import 'package:flutter/material.dart';

@immutable
class Venue {
  final String id;
  final String name;

  const Venue({
    required this.id,
    required this.name,
  });

  factory Venue.fromJson(Map<String, dynamic> json) =>
      Venue(id: json['Id'].toString(), name: json['Name'].toString());

  Map<String, dynamic> toJson() => {'Id': id, 'Name': name};

  factory Venue.initial() => const Venue(
        id: '',
        name: '',
      );

  @override
  List<Object> get props {
    return [
      id,
      name,
    ];
  }

  @override
  String toString() {
    return 'Venue(id: $id, name: $name)';
  }

  Venue copyWith({String? id, String? name}) => Venue(

        id: id ?? this.id,
        name: name ?? this.name,
      );
}
