import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  //theme
  ThemeData get theme => Theme.of(this);
  //colorscheme
  ColorScheme get colorScheme => theme.colorScheme;
  //textTheme
  TextTheme get textTheme => theme.textTheme;
}

extension SizeExtension on BuildContext {
  //size
  Size get size => MediaQuery.sizeOf(this);
  //width
  double get width => size.width;
  //heighy
  double get height => size.height;
  //dynamic height method
  double dynamicHeight(double value) => height * value;
  //dynamic width method
  double dynamicWidth(double value) => width * value;
}

extension PaddingExtension on BuildContext {
  //low padding
  EdgeInsets get lowPadding => const EdgeInsets.all(5);
  //low symetric padding
  EdgeInsets get lowSymetricPadding =>
      const EdgeInsets.symmetric(horizontal: 5, vertical: 5);
  //midlle padding
  EdgeInsets get midllePadding => const EdgeInsets.all(10);
  //midlle symetric padding
  EdgeInsets get midlleSymetricPadding =>
      const EdgeInsets.symmetric(horizontal: 10, vertical: 10);
  //high padding
  EdgeInsets get highPadding => const EdgeInsets.all(20);
  //high symetric padding
  EdgeInsets get highSymetricPadding =>
      const EdgeInsets.symmetric(horizontal: 20, vertical: 20);
}

extension BorderRadiusExtension on BuildContext {
  //low radius
  BorderRadiusGeometry get lowRadius => BorderRadius.circular(5);
  //midlle radius
  BorderRadiusGeometry get midlleRadius => BorderRadius.circular(10);
  //high radius
  BorderRadiusGeometry get highRadius => BorderRadius.circular(20);
}
