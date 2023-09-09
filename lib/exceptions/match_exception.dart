class MatchException implements Exception {
  String message;

  MatchException([this.message = 'Something went wrong']) {
    message = 'Match Exception: $message';
  }

  @override
  String toString() {
    return message;
  }
}
