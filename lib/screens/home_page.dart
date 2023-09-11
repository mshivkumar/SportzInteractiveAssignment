import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sportz_interactive_assignment/models/match_parent.dart';
import 'package:sportz_interactive_assignment/screens/team_info_page.dart';

import '../constants/constants.dart';
import '../providers/current_selection/current_selection_provider.dart';
import '../providers/match_details_list/match_details_list_provider.dart';
import '../widgets/MatchInfo/match_info_card.dart';
import '../widgets/error_dialog.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final MatchDetailsListProvider _matchDetailsListProvider;
  late final CurrentSelectionProvider _currentSelectionProvider;
  late final void Function() _removeListener;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _matchDetailsListProvider = context.read<MatchDetailsListProvider>();
    _currentSelectionProvider = context.read<CurrentSelectionProvider>();
    _removeListener = _matchDetailsListProvider.addListener(_registerListener);
    _matchDetailsListProvider
        .fetchMatchDetailsList()
        .whenComplete(() => setState(() {
              _isLoading = false;
            }));
  }

  @override
  void dispose() {
    _removeListener();
    super.dispose();
  }

  void _registerListener(MatchDetailsListState ms) {
    if (ms.status == MatchDetailsListStatus.error) {
      errorDialog(context, ms.error.errMsg);
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<MatchDetailsListState>();
    List<MatchParent> machDetailsList = state.matchDetailsList;

    return SafeArea(
      child: Scaffold(
        backgroundColor: scaffoldBackgroundColor,
        body: !_isLoading
            ? Center(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: PageView.builder(
                    itemCount: machDetailsList.length,
                    scrollDirection: Axis.horizontal,
                    allowImplicitScrolling: true,
                    controller: PageController(
                        viewportFraction: .8, initialPage: 0, keepPage: false),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () async {
                          await _currentSelectionProvider.setCurrentSelection(
                              value: state.matchDetailsList[index]);

                          if(context.mounted) Navigator.of(context).pushNamed(TeamInfoPage.routeName);
                        },
                        child: MatchInfoCard(
                          matchInfo: state.matchDetailsList[index].matchdetail,
                          teams: state.matchDetailsList[index].teams,
                        ),
                      );
                    },
                  ),
                ),
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
