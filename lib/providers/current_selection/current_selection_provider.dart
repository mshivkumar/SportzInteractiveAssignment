import 'package:equatable/equatable.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../models/custom_error.dart';
import '../../models/match_parent.dart';

part 'current_selection_state.dart';

class CurrentSelectionProvider extends StateNotifier<CurrentSelectionState>
    with LocatorMixin {
  CurrentSelectionProvider() : super(CurrentSelectionState.initial());

  Future<void> setCurrentSelection({required MatchParent value}) async {
    state = state.copyWith(status: CurrentSelectionStatus.loading);

    try {
      final MatchParent currentSelection = value;

      state = state.copyWith(
        status: CurrentSelectionStatus.loaded,
        currentSelection: currentSelection,
      );
    } on CustomError catch (e) {
      state = state.copyWith(status: CurrentSelectionStatus.error, error: e);
    }
  }
}
