import 'package:flutter/material.dart';

import 'models/data_theme_light.dart';
import 'views/screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Furniture App',
      debugShowCheckedModeBanner: false,
      theme: themeDataLight,
      themeMode: ThemeMode.light,
      home: const HomeScreen(),
    );
  }
}
