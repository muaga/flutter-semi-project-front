import 'package:flutter/material.dart';

// gap size
const double gap_main = 16.0;
const double gap_small = 5.0;
const double gap_medium = 10.0;
const double gap_large = 20.0;
const double gap_xlarge = 30.0;
const double gap_xxlarge = 50.0;
const double gap_xxxlarge = 100.0;

// font size
const double font_xsmall = 13.0;
const double font_small = 14.0;
const double font_main = 16.0;
const double font_medium = 18.0;
const double font_large = 20.0;
const double font_xlarge = 24.0;
const double font_xxlarge = 36.0;
const double font_xxxlarge = 48.0;

double getScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double getDrawerWidth(BuildContext context) {
  return getScreenWidth(context) * 0.6;
}
