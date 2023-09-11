import 'package:flutter/material.dart';
import 'package:sportz_interactive_assignment/models/MatchDetails/match.dart';

import '../../models/MatchDetails/venue.dart';

class VenueDetailWidget extends StatelessWidget {
  final Match match;
  final Venue venue;

  const VenueDetailWidget(
      {required this.match, required this.venue, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 5.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    match.league.toUpperCase(),
                    style: const TextStyle(fontSize: 15),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    match.number,
                    style: const TextStyle(fontSize: 15),
                  ),
                ],
              ),
              Text(
                match.date,
                style: const TextStyle(fontSize: 15),
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    size: 20.0,
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    venue.name,
                    style: const TextStyle(fontSize: 15.0),
                  )
                ],
              ),
              const Spacer(),
              Text(
                match.time,
                style: const TextStyle(fontSize: 15.0),
              ),
            ],
          )
        ],
      ),
    );
  }
}
