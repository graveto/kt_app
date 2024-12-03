class RootObject {
  final String label;
  final List<TeamInfo> teamInfo;

  RootObject({required this.label, required this.teamInfo});

  factory RootObject.fromJson(Map<String, dynamic> json) {
    return RootObject(
      label: json['label'] as String,
      teamInfo: (json['teamInfo'] as List<dynamic>)
          .map((e) => TeamInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}

class TeamInfo {
  final String label;

  TeamInfo({required this.label});

  factory TeamInfo.fromJson(Map<String, dynamic> json) {
    return TeamInfo(
      label: json['label'] as String,
    );
  }
}