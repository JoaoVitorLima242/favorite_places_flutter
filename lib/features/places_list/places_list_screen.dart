import 'package:favorite_places/features/add_place/add_place_screen.dart';
import 'package:favorite_places/features/places_list/widgets/places_list.dart';
import 'package:favorite_places/models/place.dart';
import 'package:favorite_places/providers/user_places.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlacesListScreen extends ConsumerWidget {
  const PlacesListScreen({super.key});

  void _onAddButtonPress(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (ctx) => const AddPlaceScreen()));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Place> userPlaces = ref.watch(userPlacesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your Places',
        ),
        actions: [
          IconButton(
              onPressed: () => _onAddButtonPress(context),
              icon: const Icon(
                Icons.add,
              ))
        ],
      ),
      body: PlacesList(places: userPlaces),
    );
  }
}
