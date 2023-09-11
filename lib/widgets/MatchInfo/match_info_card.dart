import 'package:flutter/material.dart';
import 'package:sportz_interactive_assignment/widgets/MatchInfo/live_widget.dart';
import 'package:sportz_interactive_assignment/widgets/MatchInfo/weather_widget.dart';

import '../../constants/constants.dart';
import '../../models/MatchDetails/match_detail.dart';
import '../../models/MatchDetails/series.dart';
import '../../models/Teams/teams.dart';
import 'marquee_widget.dart';
import 'venue_detail_widget.dart';

class MatchInfoCard extends StatelessWidget {
  final Matchdetail matchInfo;
  final Teams teams;

  const MatchInfoCard(
      {required this.matchInfo, required this.teams, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        color: cardColor,
        elevation: 5.0,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        teams.teamOne.nameShort,
                        style: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        teams.teamOne.nameFull,
                        style: const TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Image.asset(
                    'asset/images/vs.png',
                    height: 80,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        teams.teamTwo.nameShort,
                        style: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        teams.teamTwo.nameFull,
                        style: const TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 6,
                    child: Visibility(
                      visible:
                          matchInfo.match.livecoverage.toLowerCase().trim() ==
                              'yes',
                      child: const ListTile(
                        title: LiveWidget(),
                      ),
                    ),
                  ),
                  WeatherWidget(weather: matchInfo.weather),
                ],
              ),
              VenueDetailWidget(match: matchInfo.match, venue: matchInfo.venue),
              const SizedBox(
                height: 20.0,
              ),
              MarqueeWidget(
                  value: makeMarqueeText(info: matchInfo.series),
                  color: Colors.black54),
              const SizedBox(
                height: 40.0,
              ),
              Text(
                matchInfo.equation,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black54),
              ),
            ],
          )),
        ),
      ),
    );
  }

  String makeMarqueeText({required Series info}) {
    return '${info.name} ${info.status} ${info.tourName}';
  }
}
