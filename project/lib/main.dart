import 'package:flutter/material.dart';
import 'package:project/constants/repo.dart';
import 'package:project/screens/animal_details_screen.dart';
import 'package:project/screens/grid_screen.dart';

import 'screens/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimalDetailsScreen(animal: Repo.dogs[0]),
      debugShowCheckedModeBanner: false,
    );
  }
}
