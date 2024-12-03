import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'team_info.dart';



Future<List<RootObject>> loadTeamsFromJson() async {
  final jsonString = await rootBundle.loadString('assets/json/teams.json');
  final jsonData = jsonDecode(jsonString);

  if (jsonData is List<dynamic>) {
    return (jsonDecode(jsonString) as List<dynamic>)
        .map((e) => RootObject.fromJson(e as Map<String, dynamic>))
        .toList();
  } else {
    throw Exception('Invalid JSON format: Expected a list of strings.');
  }
}