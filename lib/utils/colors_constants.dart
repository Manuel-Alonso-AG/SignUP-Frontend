import 'package:flutter/material.dart';

const Color color01 = Color(0xFF0FB2BA);
const Color color02 = Color(0xFF53916F);
const Color color04 = Color(0xFF015E2B);
const Color color03 = Color(0xFF015A5E);

class ColorConstants {
  static Color primary(BuildContext context) => Theme.of(context).colorScheme.primary;
  static Color onPrimary(BuildContext context) => Theme.of(context).colorScheme.onPrimary;
  static Color secondary(BuildContext context) => Theme.of(context).colorScheme.secondary;
  static Color onSecondary(BuildContext context) => Theme.of(context).colorScheme.onSecondary;
  static Color error(BuildContext context) => Theme.of(context).colorScheme.error;
  static Color background(BuildContext context) => Theme.of(context).colorScheme.background;
  static Color surface(BuildContext context) => Theme.of(context).colorScheme.surface;
}

class GradientCustom {
  static LinearGradient defaultGradient() => const LinearGradient(
    colors: [color01, color02, color03],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight
  );
  static LinearGradient linear(List<Color> colors, Alignment? begin, Alignment? end) => LinearGradient(
    colors: colors,
    begin: begin?? Alignment.topLeft,
    end: end?? Alignment.bottomRight
  );
  static RadialGradient radial(List<Color> colors, Alignment? alignment, double? radius, double? focalRadius) => RadialGradient(
    colors: colors,
    center: alignment?? Alignment.center,
    radius: radius?? 0.8,
    focalRadius: focalRadius?? 0.0
  );
}