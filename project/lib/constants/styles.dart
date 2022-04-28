import 'package:flutter/material.dart';

class Styles {
  static titleStyle(BuildContext context,
          [Color? color, FontWeight? fontWeight]) =>
      Theme.of(context).textTheme.headline2?.copyWith(
            color: color,
            fontWeight: fontWeight,
          );

  static subtitleStyle(BuildContext context,
      [Color? color, FontWeight? fontWeight]) =>
      Theme.of(context).textTheme.headline6?.copyWith(
        color: color,
        fontWeight: fontWeight,
      );

  static breedNameStyle(BuildContext context,
      [Color? color, FontWeight? fontWeight]) =>
      Theme.of(context).textTheme.headline5?.copyWith(
        color: color,
        fontWeight: fontWeight,
      );

  static shortDescriptionStyle(BuildContext context,
      [Color? color, FontWeight? fontWeight]) =>
      Theme.of(context).textTheme.subtitle2?.copyWith(
        color: color,
        fontWeight: fontWeight,
      );
}
