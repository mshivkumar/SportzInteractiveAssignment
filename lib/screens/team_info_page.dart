import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/match_parent.dart';
import '../providers/current_selection/current_selection_provider.dart';
import '../widgets/TeamInfo/team_image_widget.dart';
import '../widgets/TeamInfo/team_logos_widget.dart';
import '../widgets/TeamInfo/team_players_list.dart';
import '../widgets/error_dialog.dart';

class TeamInfoPage extends StatefulWidget {
  static const String routeName = '/team-info';

  const TeamInfoPage({super.key});

  @override
  State<TeamInfoPage> createState() => _TeamInfoPageState();
}

class _TeamInfoPageState extends State<TeamInfoPage> {
  late final CurrentSelectionProvider _currentSelectionProvider;
  late final void Function() _removeListener;

  @override
  void initState() {
    super.initState();
    _currentSelectionProvider = context.read<CurrentSelectionProvider>();
    _removeListener = _currentSelectionProvider.addListener(_registerListener);
  }

  @override
  void dispose() {
    _removeListener();
    super.dispose();
  }

  void _registerListener(CurrentSelectionState ms) {
    if (ms.status == CurrentSelectionStatus.error) {
      errorDialog(context, ms.error.errMsg);
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CurrentSelectionState>();
    MatchParent currentSelection = state.currentSelection;

    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  currentSelection.matchdetail.series.name,
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
                background: const Stack(
                  children: [
                    TeamImage(),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  TeamLogos(
                    teamOneName: state.currentSelection.teams.teamOne.nameShort,
                    teamTwoName: state.currentSelection.teams.teamTwo.nameShort,
                  ),
                  TeamPlayersList(
                    teamOnePlayers:
                        state.currentSelection.teams.teamOne.players,
                    teamTwoPlayers:
                        state.currentSelection.teams.teamTwo.players,
                  ),
                  // Add more details as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
