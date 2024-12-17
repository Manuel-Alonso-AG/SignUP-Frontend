import 'package:flutter/material.dart';

// DEPRECATED: Se cambiara este archivo por los archivos "colors_constants.drat", "radius_constants", "spacing_constants"

const double padd = 20.0;
const double spacer = 50.0;
const double div = 10.0;
const double spacerLarge = 150.0;
const Radius rCircular = Radius.circular(18.0);

const BorderRadius borderCircular = BorderRadius.all(rCircular);

const EdgeInsetsGeometry paddAll = EdgeInsets.all(padd);

class PaddAll {
  EdgeInsetsGeometry large() => const EdgeInsets.all(spacer);
  EdgeInsetsGeometry medium() => const EdgeInsets.all(padd);
  EdgeInsetsGeometry small() => const EdgeInsets.all(div);
}

class PaddVertical {
  EdgeInsetsGeometry large() => const EdgeInsets.symmetric(vertical: spacer);
  EdgeInsetsGeometry medium() => const EdgeInsets.symmetric(vertical: padd);
  EdgeInsetsGeometry small() => const EdgeInsets.symmetric(vertical: div);
}

class PaddHorizontal {
  EdgeInsetsGeometry large() => const EdgeInsets.symmetric(horizontal: spacer);
  EdgeInsetsGeometry medium() => const EdgeInsets.symmetric(horizontal: padd);
  EdgeInsetsGeometry small() => const EdgeInsets.symmetric(horizontal: div);
}

class GradientBackground {
  LinearGradient normal(BuildContext context) => LinearGradient(
    colors: [
      Theme.of(context).colorScheme.primary,
      Theme.of(context).colorScheme.inversePrimary
    ],
    begin: Alignment.topLeft,
    end: Alignment.centerRight
  );
}