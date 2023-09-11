import 'package:flutter/material.dart';
import 'package:sportz_interactive_assignment/models/Teams/players.dart';
import 'package:sportz_interactive_assignment/widgets/PlayerInfo/player_info.dart';

import '../../models/Teams/player.dart';
import 'user_icon_widget.dart';

class TeamPlayersList extends StatelessWidget {
  final Players teamOnePlayers;
  final Players teamTwoPlayers;

  const TeamPlayersList(
      {required this.teamOnePlayers, required this.teamTwoPlayers, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        //Player 1
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: ListTile(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => PlayerInfo(
                            player: teamOnePlayers.playerOne,
                          ));
                },
                leading: const UserIconWidget(),
                title: Text(
                  teamOnePlayers.playerOne.nameFull,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.8),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                subtitle: getSubtitleWidget(
                    player: teamOnePlayers.playerOne,
                    isRightAligned: true,
                    isKeeper: teamOnePlayers.playerOne.isKeeper,
                    isCaptain: teamOnePlayers.playerOne.isCaptain),
              ),
            ),
            Expanded(
              child: ListTile(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => PlayerInfo(
                            player: teamTwoPlayers.playerOne,
                          ));
                },
                title: Text(
                  teamTwoPlayers.playerOne.nameFull,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.8),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                subtitle: getSubtitleWidget(
                  player: teamTwoPlayers.playerOne,
                  isRightAligned: false,
                  isKeeper: teamTwoPlayers.playerOne.isKeeper,
                  isCaptain: teamTwoPlayers.playerOne.isCaptain,
                ),
                trailing: const UserIconWidget(),
              ),
            ),
          ],
        ),
        //Player 2
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: ListTile(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => PlayerInfo(
                            player: teamOnePlayers.playerTwo,
                          ));
                },
                leading: const UserIconWidget(),
                title: Text(
                  teamOnePlayers.playerTwo.nameFull,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.8),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                subtitle: getSubtitleWidget(
                  player: teamOnePlayers.playerTwo,
                  isRightAligned: true,
                  isKeeper: teamOnePlayers.playerTwo.isKeeper,
                  isCaptain: teamOnePlayers.playerTwo.isCaptain,
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => PlayerInfo(
                            player: teamTwoPlayers.playerTwo,
                          ));
                },
                title: Text(
                  teamTwoPlayers.playerTwo.nameFull,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.8),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                subtitle: getSubtitleWidget(
                  player: teamTwoPlayers.playerTwo,
                  isRightAligned: false,
                  isKeeper: teamTwoPlayers.playerTwo.isKeeper,
                  isCaptain: teamTwoPlayers.playerTwo.isCaptain,
                ),
                trailing: const UserIconWidget(),
              ),
            ),
          ],
        ),
        //Player 3
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: ListTile(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => PlayerInfo(
                            player: teamOnePlayers.playerThree,
                          ));
                },
                leading: const UserIconWidget(),
                title: Text(
                  teamOnePlayers.playerThree.nameFull,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.8),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                subtitle: getSubtitleWidget(
                  player: teamOnePlayers.playerThree,
                  isRightAligned: true,
                  isKeeper: teamOnePlayers.playerThree.isKeeper,
                  isCaptain: teamOnePlayers.playerThree.isCaptain,
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => PlayerInfo(
                            player: teamTwoPlayers.playerThree,
                          ));
                },
                title: Text(
                  teamTwoPlayers.playerThree.nameFull,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.8),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                subtitle: getSubtitleWidget(
                  player: teamTwoPlayers.playerThree,
                  isRightAligned: false,
                  isKeeper: teamTwoPlayers.playerThree.isKeeper,
                  isCaptain: teamTwoPlayers.playerThree.isCaptain,
                ),
                trailing: const UserIconWidget(),
              ),
            ),
          ],
        ),
        //Player 4
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: ListTile(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => PlayerInfo(
                            player: teamOnePlayers.playerFour,
                          ));
                },
                leading: const UserIconWidget(),
                title: Text(
                  teamOnePlayers.playerFour.nameFull,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.8),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                subtitle: getSubtitleWidget(
                    player: teamOnePlayers.playerFour,
                    isRightAligned: true,
                    isKeeper: teamOnePlayers.playerFour.isKeeper,
                    isCaptain: teamOnePlayers.playerFour.isCaptain),
              ),
            ),
            Expanded(
              child: ListTile(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => PlayerInfo(
                            player: teamTwoPlayers.playerFour,
                          ));
                },
                title: Text(
                  teamTwoPlayers.playerFour.nameFull,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.8),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                subtitle: getSubtitleWidget(
                  player: teamTwoPlayers.playerFour,
                  isRightAligned: false,
                  isKeeper: teamTwoPlayers.playerFour.isKeeper,
                  isCaptain: teamTwoPlayers.playerFour.isCaptain,
                ),
                trailing: const UserIconWidget(),
              ),
            ),
          ],
        ),
        //Player 5
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: ListTile(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => PlayerInfo(
                            player: teamOnePlayers.playerFive,
                          ));
                },
                leading: const UserIconWidget(),
                title: Text(
                  teamOnePlayers.playerFive.nameFull,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.8),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                subtitle: getSubtitleWidget(
                  player: teamOnePlayers.playerFive,
                  isRightAligned: true,
                  isKeeper: teamOnePlayers.playerFive.isKeeper,
                  isCaptain: teamOnePlayers.playerFive.isCaptain,
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => PlayerInfo(
                            player: teamTwoPlayers.playerFive,
                          ));
                },
                title: Text(
                  teamTwoPlayers.playerFive.nameFull,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.8),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                subtitle: getSubtitleWidget(
                  player: teamTwoPlayers.playerFive,
                  isRightAligned: false,
                  isKeeper: teamTwoPlayers.playerFive.isKeeper,
                  isCaptain: teamTwoPlayers.playerFive.isCaptain,
                ),
                trailing: const UserIconWidget(),
              ),
            ),
          ],
        ),
        //Player 6
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: ListTile(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => PlayerInfo(
                            player: teamOnePlayers.playerSix,
                          ));
                },
                leading: const UserIconWidget(),
                title: Text(
                  teamOnePlayers.playerSix.nameFull,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.8),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                subtitle: getSubtitleWidget(
                  player: teamOnePlayers.playerSix,
                  isRightAligned: true,
                  isKeeper: teamOnePlayers.playerSix.isKeeper,
                  isCaptain: teamOnePlayers.playerSix.isCaptain,
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => PlayerInfo(
                            player: teamTwoPlayers.playerSix,
                          ));
                },
                title: Text(
                  teamTwoPlayers.playerSix.nameFull,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.8),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                subtitle: getSubtitleWidget(
                  player: teamTwoPlayers.playerSix,
                  isRightAligned: false,
                  isKeeper: teamTwoPlayers.playerSix.isKeeper,
                  isCaptain: teamTwoPlayers.playerSix.isCaptain,
                ),
                trailing: const UserIconWidget(),
              ),
            ),
          ],
        ),
        //Player 7
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: ListTile(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => PlayerInfo(
                            player: teamOnePlayers.playerSeven,
                          ));
                },
                leading: const UserIconWidget(),
                title: Text(
                  teamOnePlayers.playerSeven.nameFull,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.8),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                subtitle: getSubtitleWidget(
                  player: teamOnePlayers.playerSeven,
                  isRightAligned: true,
                  isKeeper: teamOnePlayers.playerSeven.isKeeper,
                  isCaptain: teamOnePlayers.playerSeven.isCaptain,
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => PlayerInfo(
                            player: teamTwoPlayers.playerSeven,
                          ));
                },
                title: Text(
                  teamTwoPlayers.playerSeven.nameFull,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.8),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                subtitle: getSubtitleWidget(
                  player: teamTwoPlayers.playerSeven,
                  isRightAligned: false,
                  isKeeper: teamTwoPlayers.playerSeven.isKeeper,
                  isCaptain: teamTwoPlayers.playerSeven.isCaptain,
                ),
                trailing: const UserIconWidget(),
              ),
            ),
          ],
        ),
        //Player 8
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: ListTile(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => PlayerInfo(
                            player: teamOnePlayers.playerEight,
                          ));
                },
                leading: const UserIconWidget(),
                title: Text(
                  teamOnePlayers.playerEight.nameFull,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.8),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                subtitle: getSubtitleWidget(
                  player: teamOnePlayers.playerEight,
                  isRightAligned: true,
                  isKeeper: teamOnePlayers.playerEight.isKeeper,
                  isCaptain: teamOnePlayers.playerEight.isCaptain,
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => PlayerInfo(
                            player: teamTwoPlayers.playerEight,
                          ));
                },
                title: Text(
                  teamTwoPlayers.playerEight.nameFull,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.8),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                subtitle: getSubtitleWidget(
                  player: teamTwoPlayers.playerEight,
                  isRightAligned: false,
                  isKeeper: teamTwoPlayers.playerEight.isKeeper,
                  isCaptain: teamTwoPlayers.playerEight.isCaptain,
                ),
                trailing: const UserIconWidget(),
              ),
            ),
          ],
        ),
        //Player 9
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: ListTile(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => PlayerInfo(
                            player: teamOnePlayers.playerNine,
                          ));
                },
                leading: const UserIconWidget(),
                title: Text(
                  teamOnePlayers.playerNine.nameFull,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.8),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                subtitle: getSubtitleWidget(
                  player: teamOnePlayers.playerNine,
                  isRightAligned: true,
                  isKeeper: teamOnePlayers.playerNine.isKeeper,
                  isCaptain: teamOnePlayers.playerNine.isCaptain,
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => PlayerInfo(
                            player: teamTwoPlayers.playerNine,
                          ));
                },
                title: Text(
                  teamTwoPlayers.playerNine.nameFull,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.8),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                subtitle: getSubtitleWidget(
                  player: teamTwoPlayers.playerNine,
                  isRightAligned: false,
                  isKeeper: teamTwoPlayers.playerNine.isKeeper,
                  isCaptain: teamTwoPlayers.playerNine.isCaptain,
                ),
                trailing: const UserIconWidget(),
              ),
            ),
          ],
        ),
        //Player 10
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: ListTile(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => PlayerInfo(
                            player: teamOnePlayers.playerTen,
                          ));
                },
                leading: const UserIconWidget(),
                title: Text(
                  teamOnePlayers.playerTen.nameFull,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.8),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                subtitle: getSubtitleWidget(
                  player: teamOnePlayers.playerTen,
                  isRightAligned: true,
                  isKeeper: teamOnePlayers.playerTen.isKeeper,
                  isCaptain: teamOnePlayers.playerTen.isCaptain,
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => PlayerInfo(
                            player: teamTwoPlayers.playerTen,
                          ));
                },
                title: Text(
                  teamTwoPlayers.playerTen.nameFull,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.8),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                subtitle: getSubtitleWidget(
                  player: teamTwoPlayers.playerTen,
                  isRightAligned: false,
                  isKeeper: teamTwoPlayers.playerTen.isKeeper,
                  isCaptain: teamTwoPlayers.playerTen.isCaptain,
                ),
                trailing: const UserIconWidget(),
              ),
            ),
          ],
        ),
        //Player 11
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: ListTile(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => PlayerInfo(
                            player: teamOnePlayers.playerEleven,
                          ));
                },
                leading: const UserIconWidget(),
                title: Text(
                  teamOnePlayers.playerEleven.nameFull,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.8),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                subtitle: getSubtitleWidget(
                  player: teamOnePlayers.playerEleven,
                  isRightAligned: true,
                  isKeeper: teamOnePlayers.playerEleven.isKeeper,
                  isCaptain: teamOnePlayers.playerEleven.isCaptain,
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => PlayerInfo(
                            player: teamOnePlayers.playerEleven,
                          ));
                },
                title: Text(
                  teamTwoPlayers.playerEleven.nameFull,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.8),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                subtitle: getSubtitleWidget(
                  player: teamTwoPlayers.playerEleven,
                  isRightAligned: false,
                  isKeeper: teamTwoPlayers.playerEleven.isKeeper,
                  isCaptain: teamTwoPlayers.playerEleven.isCaptain,
                ),
                trailing: const UserIconWidget(),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget getSubtitleWidget({
    required Player player,
    required bool isRightAligned,
    required bool isKeeper,
    required bool isCaptain,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment:
          (isRightAligned) ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: [
        Text(player.batting.style),
        if (isKeeper)
          const Text(
            ' (WK) ',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        if (isCaptain)
          const Text(
            ' (C) ',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
      ],
    );
  }
}
