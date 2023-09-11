import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class MarqueeWidget extends StatelessWidget {
  final String value;
  final Color color;

  const MarqueeWidget({required this.value, required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: Marquee(
        text: value,
        style: TextStyle(fontWeight: FontWeight.bold, color: color),
        scrollAxis: Axis.horizontal,
        crossAxisAlignment: CrossAxisAlignment.start,
        blankSpace: 20.0,
        velocity: 100.0,
        pauseAfterRound: const Duration(seconds: 1),
        startPadding: 10.0,
        accelerationDuration: const Duration(seconds: 1),
        accelerationCurve: Curves.linear,
        decelerationDuration: const Duration(milliseconds: 500),
        decelerationCurve: Curves.easeOut,
      ),
    );
  }
}
