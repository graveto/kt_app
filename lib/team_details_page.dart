import 'package:flutter/material.dart';
import 'package:kt_app/team_data.dart';
// import 'package:kt_app/team_info.dart';

import 'datacards_page.dart';

class TeamDetailsPage extends StatelessWidget {
  final Team team;
  const TeamDetailsPage({super.key, required this.team});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(team.label),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView.builder(
            itemCount: team.teamInfo.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(team.teamInfo[index].label),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DataCardsPage(label: team.teamInfo[index].label, path: team.teamInfo[index].path),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}




