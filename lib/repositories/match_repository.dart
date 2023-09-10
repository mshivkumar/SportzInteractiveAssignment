import '../exceptions/match_exception.dart';
import '../models/custom_error.dart';
import '../models/match_parent.dart';
import '../services/match_api_services.dart';

class MatchRepository {
  final MatchApiServices matchApiServices;

  MatchRepository({
    required this.matchApiServices,
  });

  Future<List<MatchParent>> fetchMatchDetailsList() async {
    try {
      final List<MatchParent> matchDetailsList =
          await matchApiServices.getMatchDetailsList();

      return matchDetailsList;
    } on MatchException catch (e) {
      throw CustomError(errMsg: e.message);
    } catch (e) {
      throw CustomError(errMsg: e.toString());
    }
  }
}
