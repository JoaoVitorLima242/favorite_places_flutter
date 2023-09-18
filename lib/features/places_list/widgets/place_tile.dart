import 'package:favorite_places/features/place_details/place_details_screen.dart';
import 'package:favorite_places/models/place.dart';
import 'package:flutter/material.dart';

class PlaceTile extends StatelessWidget {
  const PlaceTile(this.place, {super.key});

  final Place place;

  void onTileTap(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => PlaceDetailsScreen(place: place),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => onTileTap(context),
      title: Text(
        place.title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
