import 'package:flutter/material.dart';

import 'home.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
    title: 'Sonus99',
    locale: const Locale("en"),
    routes: {
      "/home": (_) => HomePage(),
    },
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
    home:  HomePage(),
  ));
}
