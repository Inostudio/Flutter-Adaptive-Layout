import 'package:flutter/material.dart';

import '../constants/styles.dart';

class CarouselItem extends StatelessWidget {
  const CarouselItem(
      {required this.index,
      required this.itemImage,
      required this.breed,
      required this.shortDescription,
      required this.orientation,
      Key? key})
      : super(key: key);

  final int index;
  final Image itemImage;
  final String breed;
  final String shortDescription;
  final Orientation orientation;

  @override
  Widget build(BuildContext context) {
    if (orientation == Orientation.portrait) {
      return Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 300.0,
                height: 300.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey[300]),
              ),
              Center(
                child: SizedBox.square(
                  dimension: 200.0,
                  child: itemImage,
                ),
              ),
            ],
          ),
          const Spacer(),
          Text(
            breed.toUpperCase(),
            style:
                Styles.breedNameStyle(context, Colors.black, FontWeight.bold),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            shortDescription,
            style: Styles.shortDescriptionStyle(context, Colors.grey),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
        ],
      );
    } else {
      return Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 300.0,
                height: 300.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey[300]),
              ),
              Center(
                child: SizedBox.square(
                  dimension: 200.0,
                  child: itemImage,
                ),
              ),
            ],
          ),
          const Spacer(),
          Column(
            children: [
              Text(
                breed.toUpperCase(),
                style: Styles.breedNameStyle(
                    context, Colors.black, FontWeight.bold),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                shortDescription,
                style: Styles.shortDescriptionStyle(context, Colors.grey),
                textAlign: TextAlign.center,
              )
            ],
          ),
          const Spacer(),
        ],
      );
    }
  }
}
