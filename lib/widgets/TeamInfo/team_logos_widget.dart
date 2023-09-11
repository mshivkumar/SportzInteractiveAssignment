import 'package:flutter/material.dart';

class TeamLogos extends StatelessWidget {
  final String teamOneName;
  final String teamTwoName;

  const TeamLogos(
      {required this.teamOneName, required this.teamTwoName, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.2),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              teamOneName,
              style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 2.0),
            ),
            Text(
              teamTwoName,
              style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 2.0),
            ),
            // Image.asset(
            //   'asset/images/india_icon.png',
            //   height: 50,
            // ),
            // Image.asset(
            //   'asset/images/nz_icon.png',
            //   height: 50,
            // ),
          ],
        ),
      ),
    );
  }
}
