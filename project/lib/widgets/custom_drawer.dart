import 'package:flutter/material.dart';

import '../constants/enums.dart';
import '../constants/strings.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({required this.onTap, Key? key}) : super(key: key);

  final Function(AnimalType) onTap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          ListTile(
            title: const Text("Cats"),
            onTap: () {
              onTap(AnimalType.cat);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text("Dogs"),
            onTap: () {
              onTap(AnimalType.dog);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text("Parrots"),
            onTap: () {
              onTap(AnimalType.parrot);
              Navigator.pop(context);
            },
          ),
          const Spacer(),
          Image.asset(Strings.inoLogo()),
        ],
      ),
    );
  }
}
