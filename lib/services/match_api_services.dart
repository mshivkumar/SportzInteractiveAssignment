import 'dart:convert';
import 'package:http/http.dart' as http;

import 'http_error_handler.dart';
import '../constants/constants.dart';
import '../exceptions/match_exception.dart';
import '../models/match_parent.dart';

class MatchApiServices {
  final http.Client httpClient;

  MatchApiServices({
    required this.httpClient,
  });

  Future<MatchParent> getMatchDetails({required String apiPath}) async {
    final Uri uri = Uri(
      scheme: 'https',
      host: kApiHost,
      path: apiPath,
    );

    try {
      final http.Response response = await httpClient.get(uri);

      if (response.statusCode != 200) {
        throw httpErrorHandler(response);
      }

      final responseBody = json.decode(response.body);

      if (responseBody.isEmpty) {
        throw MatchException('Cannot get the match details.');
      }

      final matchDetails = MatchParent.fromJson(responseBody);

      return matchDetails;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<MatchParent>> getMatchDetailsList() async {
    try {
      List<MatchParent> matchDetailsList = [];
      MatchParent elementOne = await getMatchDetails(apiPath: kApiPathOne);
      MatchParent elementTwo = await getMatchDetails(apiPath: kApiPathTwo);

      matchDetailsList.add(elementOne);
      matchDetailsList.add(elementTwo);

      return matchDetailsList;
    } catch (e) {
      rethrow;
    }
  }
}
