import 'package:favorite_places/features/places_list/widgets/places_list.dart';
import 'package:flutter/material.dart';

class PlacesListScreen extends StatefulWidget {
  const PlacesListScreen({super.key});

  @override
  State<PlacesListScreen> createState() {
    return _PlacesListScreen();
  }
}

class _PlacesListScreen extends State<PlacesListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your Places',
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
              ))
        ],
      ),
      body: const PlacesList(places: []),
    );
  }
}
