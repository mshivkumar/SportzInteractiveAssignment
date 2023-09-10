import 'package:equatable/equatable.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../models/custom_error.dart';
import '../../models/match_parent.dart';
import '../../repositories/match_repository.dart';

part 'match_details_list_state.dart';

class MatchDetailsListProvider extends StateNotifier<MatchDetailsListState>
    with LocatorMixin {
  MatchDetailsListProvider() : super(MatchDetailsListState.initial());

  Future<void> fetchMatchDetailsList() async {
    state = state.copyWith(status: MatchDetailsListStatus.loading);

    try {
      final List<MatchParent> matchDetailsList =
          await read<MatchRepository>().fetchMatchDetailsList();

      state = state.copyWith(
        status: MatchDetailsListStatus.loaded,
        matchDetailsList: matchDetailsList,
      );
    } on CustomError catch (e) {
      state = state.copyWith(status: MatchDetailsListStatus.error, error: e);
    }
  }
}
