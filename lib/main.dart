import 'package:favorite_places/features/places_list/places_list_screen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

final colorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(165, 123, 255, 214),
  background: const Color.fromARGB(255, 255, 255, 255),
);

final theme = ThemeData(fontFamily: 'UbuntuCondensed').copyWith(
  useMaterial3: true,
  scaffoldBackgroundColor: colorScheme.background,
  colorScheme: colorScheme,
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      home: const PlacesListScreen(),
    );
  }
}
