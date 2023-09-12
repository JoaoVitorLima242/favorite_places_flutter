import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:favorite_places/models/place.dart';

class UserPlacesNotifier extends StateNotifier<List<Place>> {
  UserPlacesNotifier() : super(const []);

  void addPlaceMethod(Place place) {
    state = [place, ...state];
  }
}

final userPlacesProvider = StateNotifierProvider(
  (ref) => UserPlacesNotifier(),
);
