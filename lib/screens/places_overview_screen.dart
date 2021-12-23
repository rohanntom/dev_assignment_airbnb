import 'package:flutter/material.dart';

class PlacesOverviewScreen extends StatefulWidget {
  @override
  State<PlacesOverviewScreen> createState() => _PlacesOverviewScreenState();
}

class _PlacesOverviewScreenState extends State<PlacesOverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Hello',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
