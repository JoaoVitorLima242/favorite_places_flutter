import 'package:flutter/material.dart';

class ImageInput extends StatefulWidget {
  const ImageInput({super.key});

  @override
  State<ImageInput> createState() {
    return _ImageInput();
  }
}

class _ImageInput extends State<ImageInput> {
  void _takePicture() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.all(
        width: 1,
        color: Theme.of(context).colorScheme.primary.withOpacity(0.8),
      )),
      child: TextButton.icon(
        onPressed: _takePicture,
        icon: const Icon(Icons.camera),
        label: const Text('Take a Picture'),
      ),
    );
  }
}
