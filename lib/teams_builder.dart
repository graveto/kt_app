import 'package:kt_app/team_data.dart';

class TeamBuilder {
  String? label;
  List<TeamInfo> teamInfo = [];

  TeamBuilder setLabel(String label) {
    this.label = label;
    return this;
  }

  TeamBuilder addTeamInfo(TeamInfo teamInfo) {
    this.teamInfo.add(teamInfo);
    return this;
  }

  Team build() {
    return Team(label: label!, teamInfo: teamInfo);
  }
}

class TeamInfoBuilder {
  String? label;
  String? path;

  TeamInfoBuilder setLabel(String label) {
    this.label = label;
    return this;
  }

  TeamInfoBuilder setPath(String path) {
    this.path = path;
    return this;
  }

  TeamInfo build() {
    return TeamInfo(label: label!, path: path!);
  }
}