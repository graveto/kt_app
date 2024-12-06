import 'package:json_annotation/json_annotation.dart';

part 'team_data.g.dart';

@JsonSerializable()
class Team {
  final String label;
  final List<TeamInfo> teamInfo;

  Team({required this.label, required this.teamInfo});

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);

  Map<String, dynamic> toJson() => _$TeamToJson(this);
}

@JsonSerializable()
class TeamInfo {
  final String label;
  final String path;

  TeamInfo({required this.label, required this.path});

  factory TeamInfo.fromJson(Map<String, dynamic> json) =>
      _$TeamInfoFromJson(json);

  Map<String, dynamic> toJson() => _$TeamInfoToJson(this);
}