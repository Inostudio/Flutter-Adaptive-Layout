
import 'package:flutter/material.dart';

class AnimalImage extends StatelessWidget {
  final Widget image;
  final double size;

  const AnimalImage({required this.image, required this.size, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: size,
          height: size,
          decoration:
          BoxDecoration(shape: BoxShape.circle, color: Colors.grey[300]),
        ),
        Center(
          child: SizedBox.square(
            dimension: size * 0.8,
            child: image,
          ),
        ),
      ],
    );
  }

}