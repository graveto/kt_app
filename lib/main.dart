import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:kt_app/team_data.dart';
// import 'package:kt_app/team_info.dart';
import 'package:kt_app/team_list_page.dart';
// import 'teams_loading.dart';

List<dynamic> teams = [];

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final jsonString = await rootBundle.loadString('assets/json/teams.json');
  final jsonList = await jsonDecode(jsonString);

  List<dynamic> teams = jsonList
      .map((json) => Team.fromJson(json as Map<String, dynamic>))
      .toList();

  runApp( MyApp(teams: teams));
}

class MyApp extends StatelessWidget {
  const MyApp({required this.teams, super.key});
  final List<dynamic> teams;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TeamListPage(teams: teams),
    );
  }
}




