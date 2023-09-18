import 'package:favorite_places/models/place.dart';
import 'package:favorite_places/providers/user_places.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddPlaceForm extends ConsumerStatefulWidget {
  const AddPlaceForm({super.key});

  @override
  ConsumerState<AddPlaceForm> createState() {
    return _AddPlaceForm();
  }
}

class _AddPlaceForm extends ConsumerState<AddPlaceForm> {
  final _titleController = TextEditingController();

  void _onAddPlace() {
    final enteredTitle = _titleController.text;

    if (enteredTitle.isEmpty) {
      return;
    }

    ref
        .read(userPlacesProvider.notifier)
        .addPlaceMethod(Place(title: enteredTitle));

    Navigator.of(context).pop();
  }

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              label: Text(
                'Title',
                style:
                    TextStyle(color: Theme.of(context).colorScheme.onPrimary),
              ),
            ),
            controller: _titleController,
          ),
          const SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: _onAddPlace,
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            icon: Icon(
              Icons.add,
              color: Theme.of(context).colorScheme.onSecondary,
            ),
            label: Text(
              'Add place',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.onSecondary,
                  fontWeight: FontWeight.w700),
            ),
          )
        ],
      ),
    );
  }
}
