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

  Future<MatchParent> getMatchDetails() async {
    final Uri uri = Uri(
      scheme: 'https',
      host: kApiHost,
      path: '/nzin01312019187360.json',
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
}
