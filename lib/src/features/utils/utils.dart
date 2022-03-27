import 'package:flutter/material.dart';

class CustomSizeConfig {
  double heightPercentage(BuildContext context, double percentage) {
    return MediaQuery.of(context).size.height * percentage;
  }

  double widthPercentage(BuildContext context, double percentage) {
    return MediaQuery.of(context).size.width * percentage;
  }
}
