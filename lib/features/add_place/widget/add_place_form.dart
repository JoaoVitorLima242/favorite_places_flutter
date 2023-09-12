import 'package:flutter/material.dart';

class AddPlaceForm extends StatefulWidget {
  const AddPlaceForm({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AddPlaceForm();
  }
}

class _AddPlaceForm extends State<AddPlaceForm> {
  final _titleController = TextEditingController();

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
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: const Text('Add place'),
          )
        ],
      ),
    );
  }
}
