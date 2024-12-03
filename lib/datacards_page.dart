import 'package:flutter/material.dart';
import 'package:pdfrx/pdfrx.dart';

class DataCardsPage extends StatelessWidget {
  final String dataCard;

  const DataCardsPage({super.key, required this.dataCard});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$dataCard'),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: PdfViewer.asset('assets/pdfs/angels_of_death_datacards.pdf'),
      ),
    );
  }
}