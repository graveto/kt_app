import 'package:flutter/material.dart';
import 'package:kt_app/team_details_page.dart';
// import 'package:kt_app/team_info.dart';
// import 'main.dart';

class TeamListPage extends StatelessWidget {
  final List<dynamic> teams;

  const TeamListPage({super.key, required this.teams});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('REFERENCE'),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        bottom: PreferredSize(preferredSize: const Size.fromHeight(2.0), child: Container(color: Colors.black12, height: 2.0,),),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView.separated(
            itemCount: teams.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(teams[index].label),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TeamDetailsPage(team: teams[index]),
                    ),
                  );
                },
              );
            },
            separatorBuilder: (context, index) {
              // Add separator after index 1 (which is the second item)
              if (index == 1) {
                return const Divider(
                  thickness: 2, // Customize thickness if needed
                  color: Colors.grey, // Customize color if needed
                );
              } else {
                return const SizedBox.shrink(); // Empty separator for other items
              }
            },
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 103,
        color: Colors.deepOrange,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround, // Distribute items evenly
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.list),
                    color: Colors.white,
                    onPressed: () {
                      // Handle home button press
                    },
                  ),
                  const Text('REFERENCE', style: TextStyle(color: Colors.white)),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.search),
                    color: Colors.white,
                    onPressed: () {
                      // Handle search button press
                    },
                  ),
                  const Text('SEARCH', style: TextStyle(color: Colors.white)),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.person),
                    color: Colors.white,
                    onPressed: () {
                      // Handle profile button press
                    },
                  ),
                  const Text('PROFILE', style: TextStyle(color: Colors.white)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}