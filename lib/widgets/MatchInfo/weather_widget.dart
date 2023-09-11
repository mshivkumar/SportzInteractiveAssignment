import 'package:flutter/material.dart';

class WeatherWidget extends StatelessWidget {
  final String weather;

  const WeatherWidget({required this.weather, super.key});

  @override
  Widget build(BuildContext context) {
    return (weather == 'Sunny')
        ? Expanded(
            flex: 4,
            child: Image.asset(
              'asset/images/sunny.png',
              height: 40,
            ))
        : Expanded(
            flex: 4,
            child: Image.asset(
              'asset/images/clear.png',
              height: 40,
            ));
  }
}
