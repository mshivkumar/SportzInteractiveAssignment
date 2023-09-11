import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

import 'providers/match_details_list/match_details_list_provider.dart';
import 'repositories/match_repository.dart';
import 'screens/home_page.dart';
import 'services/match_api_services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<MatchRepository>(
          create: (context) => MatchRepository(
            matchApiServices: MatchApiServices(
              httpClient: http.Client(),
            ),
          ),
        ),
        StateNotifierProvider<MatchDetailsListProvider, MatchDetailsListState>(
          create: (context) => MatchDetailsListProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}
