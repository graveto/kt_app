import 'package:flutter/material.dart';
import 'package:kt_app/team_info.dart';
import 'package:pdfrx/pdfrx.dart';

class DataCardsPage extends StatelessWidget {
  final String label;
  final String path;

  const DataCardsPage({super.key, required this.label, required this.path});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(label),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: PdfViewer.asset(path),
      ),
    );
  }
}