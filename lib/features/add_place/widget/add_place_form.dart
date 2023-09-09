import 'package:flutter/material.dart';

class AddPlaceForm extends StatefulWidget {
  const AddPlaceForm({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AddPlaceForm();
  }
}

class _AddPlaceForm extends State<AddPlaceForm> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Form(),
    );
  }
}
