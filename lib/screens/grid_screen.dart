import 'package:flutter/material.dart';
import 'package:project/animals/animal.dart';
import 'package:project/widgets/animal_tile.dart';

import '../constants/repo.dart';
import '../constants/styles.dart';

class GridScreen extends StatelessWidget {
  GridScreen({Key? key}) : super(key: key);

  final List<Animal> data = Repo.cats;

  // final appBar =

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Details",
          style: Styles.subtitleStyle(context, Colors.white),
        ),
      ),
      body: SafeArea(child: _content(context)),
    );
  }

  Widget _content(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final tileHeight = screenHeight -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom -
        AppBar().preferredSize.height;
    return LayoutBuilder(builder: (context, constraints) {
      final isLarge = constraints.maxWidth > 400;
      final colCount = isLarge ? 3 : 1;
      final tileWidth = screenWidth / colCount;
      return GridView.count(
        crossAxisCount: colCount,
        childAspectRatio: tileWidth / tileHeight,
        children:
        data.map((e) => AnimalTile(animal: e, size: screenWidth)).toList(),
      );
    }) ;
  }
}
