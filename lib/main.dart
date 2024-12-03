import 'package:flutter/material.dart';
import 'package:kt_app/team_info.dart';
import 'package:kt_app/team_list_page.dart';
import 'teams_loading.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final teams = await loadTeamsFromJson();
  runApp( MyApp(teams: teams));
}

class MyApp extends StatelessWidget {
  const MyApp({required this.teams, super.key});
  final List<RootObject> teams;
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




