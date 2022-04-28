import 'package:flutter/material.dart';
import 'package:project/constants/styles.dart';

import '../animals/animal.dart';
import '../widgets/animal_image.dart';

class AnimalDetailsScreen extends StatelessWidget {
  final Animal animal;

  const AnimalDetailsScreen({required this.animal, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Animal details",
          style: Styles.subtitleStyle(context, Colors.white),
        ),
      ),
      body: SafeArea(child: _content(context)),
    );
  }

  Widget _content(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isLargeScreen = constraints.maxWidth > 400;
            return isLargeScreen
                ? _landscapeWidget(context)
                : _portraitWidget(context);
          },
        ),
      ),
    );
  }

  Widget _landscapeWidget(BuildContext context) {
    return Row(
      children: [
        AnimalImage(
          image: animal.image,
          size: MediaQuery.of(context).size.width * 0.5,
        ),
        const SizedBox(width: 16,),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  animal.breed,
                  style: Styles.titleStyle(context),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  animal.description,
                  style: Styles.shortDescriptionStyle(context),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _portraitWidget(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AnimalImage(
            image: animal.image,
            size: MediaQuery.of(context).size.width * 0.8,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            animal.breed,
            style: Styles.titleStyle(context),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            animal.description,
            style: Styles.shortDescriptionStyle(context),
          )
        ],
      ),
    );
  }
}
