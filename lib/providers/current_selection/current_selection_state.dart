part of 'current_selection_provider.dart';

enum CurrentSelectionStatus {
  initial,
  loading,
  loaded,
  error,
}

class CurrentSelectionState extends Equatable {
  final CurrentSelectionStatus status;
  final MatchParent currentSelection;
  final CustomError error;

  const CurrentSelectionState({
    required this.status,
    required this.currentSelection,
    required this.error,
  });

  factory CurrentSelectionState.initial() {
    return CurrentSelectionState(
      status: CurrentSelectionStatus.initial,
      currentSelection: MatchParent.initial(),
      error: CustomError(),
    );
  }

  @override
  List<Object> get props => [status, currentSelection, error];

  @override
  String toString() =>
      'CurrentSelectionState(status: $status, currentSelection: $currentSelection, error: $error)';

  CurrentSelectionState copyWith({
    CurrentSelectionStatus? status,
    MatchParent? currentSelection,
    CustomError? error,
  }) {
    return CurrentSelectionState(
      status: status ?? this.status,
      currentSelection: currentSelection ?? this.currentSelection,
      error: error ?? this.error,
    );
  }
}
