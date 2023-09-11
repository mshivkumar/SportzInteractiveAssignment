import 'package:flutter/material.dart';

import '../../models/Teams/player.dart';

class PlayerInfo extends StatelessWidget {
  final Player player;

  const PlayerInfo({required this.player, super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.withOpacity(0.2),
              ),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(
                  Icons.person,
                  color: Colors.grey,
                  size: 60.0,
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              player.nameFull,
              style: const TextStyle(fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Batting',
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: Colors.grey),
                ),
                Text(
                  'Bowling',
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Style: ${player.batting.style}'),
                      Text('Style: ${player.bowling.style}'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Average: ${player.batting.average}'),
                      Text('Style: ${player.bowling.average}'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Strikerate: ${player.batting.strikerate}'),
                      Text('Economyrate: ${player.bowling.economyrate}'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Runs: ${player.batting.runs}'),
                      Text('Wickets: ${player.bowling.wickets}'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
