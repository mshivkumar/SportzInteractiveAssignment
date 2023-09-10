part of 'match_details_list_provider.dart';

enum MatchDetailsListStatus {
  initial,
  loading,
  loaded,
  error,
}

class MatchDetailsListState extends Equatable {
  final MatchDetailsListStatus status;
  final List<MatchParent> matchDetailsList;
  final CustomError error;

  const MatchDetailsListState({
    required this.status,
    required this.matchDetailsList,
    required this.error,
  });

  factory MatchDetailsListState.initial() {
    return const MatchDetailsListState(
      status: MatchDetailsListStatus.initial,
      matchDetailsList: [],
      error: CustomError(),
    );
  }

  @override
  List<Object> get props => [status, matchDetailsList, error];

  @override
  String toString() =>
      'MatchDetailsListState(status: $status, matchDetailsList: $matchDetailsList, error: $error)';

  MatchDetailsListState copyWith({
    MatchDetailsListStatus? status,
    List<MatchParent>? matchDetailsList,
    CustomError? error,
  }) {
    return MatchDetailsListState(
      status: status ?? this.status,
      matchDetailsList: matchDetailsList ?? this.matchDetailsList,
      error: error ?? this.error,
    );
  }
}
