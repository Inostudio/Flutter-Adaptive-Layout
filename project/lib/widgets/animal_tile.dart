import 'package:flutter/material.dart';
import 'package:project/constants/styles.dart';

import '../animals/animal.dart';
import 'animal_image.dart';

class AnimalTile extends StatelessWidget {
  final Animal animal;
  final double size;

  const AnimalTile({required this.animal, required this.size, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.withOpacity((animal.age ?? 0) * 0.1),
      child: Center(child: Column(
        mainAxisSize: MainAxisSize.min,
      children: [
        _avatar(),
        const SizedBox(
          height: 8,
        ),
        Text(
          animal.breed,
          textAlign: TextAlign.center,
          style: Styles.titleStyle(context),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          animal.shortDescription,
          textAlign: TextAlign.center,
          style: Styles.shortDescriptionStyle(context),
        ),
      ],
    ),),);
  }

  Widget _avatar() {
    return AnimalImage(image: animal.image, size: size * 0.8,);
  }
}
