import 'package:favorite_places/features/add_place/add_place_screen.dart';
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
  void _onAddButtonPress() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (ctx) => const AddPlaceScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your Places',
        ),
        actions: [
          IconButton(
              onPressed: _onAddButtonPress,
              icon: const Icon(
                Icons.add,
              ))
        ],
      ),
      body: const PlacesList(places: []),
    );
  }
}
