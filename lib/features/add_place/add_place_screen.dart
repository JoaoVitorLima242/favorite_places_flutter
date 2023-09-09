import 'package:favorite_places/features/add_place/widget/add_place_form.dart';
import 'package:flutter/material.dart';

class AddPlaceScreen extends StatelessWidget {
  const AddPlaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Place'),
      ),
      body: const AddPlaceForm(),
    );
  }
}
