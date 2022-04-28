import 'package:flutter/cupertino.dart';

class Animal {
  String breed;
  Image image;
  int? age;
  String shortDescription;
  String description;

  Animal({
    required this.breed,
    required this.image,
    this.age,
    required this.shortDescription,
    required this.description,
  });
}