import 'package:flutter/material.dart';

@immutable
class Officials {
  final String umpires;
  final String referee;

  const Officials({
    required this.umpires,
    required this.referee,
  });

  factory Officials.fromJson(Map<String,dynamic> json) => Officials(
      umpires: json['Umpires'].toString(),
      referee: json['Referee'].toString()
  );

  Map<String, dynamic> toJson() => {
    'Umpires': umpires,
    'Referee': referee
  };

  factory Officials.initial() => const Officials(
    umpires: '',
    referee: '',
  );

  @override
  List<Object> get props {
    return [
      umpires,
      referee,
    ];
  }

  @override
  String toString() {
    return 'Officials(umpires: $umpires, referee: $referee)';
  }

  Officials copyWith({
    String? umpires,
    String? referee
  }) => Officials(
    umpires: umpires ?? this.umpires,
    referee: referee ?? this.referee,
  );
}