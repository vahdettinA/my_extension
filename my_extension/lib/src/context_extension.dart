import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  ColorScheme get colorScheme => theme.colorScheme;
  TextTheme get textTheme => theme.textTheme;
}

extension SizeExtension on BuildContext {
  Size get size => MediaQuery.sizeOf(this);
  double get width => size.width;
  double get height => size.height;
  double dynamicHeight(double value) => height * value;
  double dynamicWidth(double value) => width * value;
}

extension PaddingExtension on BuildContext {
  EdgeInsets get lowPadding => const EdgeInsets.all(5);
  EdgeInsets get lowSymetricPadding =>
      const EdgeInsets.symmetric(horizontal: 5, vertical: 5);
  EdgeInsets get midllePadding => const EdgeInsets.all(10);
  EdgeInsets get midlleSymetricPadding =>
      const EdgeInsets.symmetric(horizontal: 10, vertical: 10);
  EdgeInsets get highPadding => const EdgeInsets.all(20);
  EdgeInsets get highSymetricPadding =>
      const EdgeInsets.symmetric(horizontal: 20, vertical: 20);
}

extension BorderRadiusExtension on BuildContext {
  BorderRadiusGeometry get lowRadius => BorderRadius.circular(5);
  BorderRadiusGeometry get midlleRadius => BorderRadius.circular(10);
  BorderRadiusGeometry get highRadius => BorderRadius.circular(20);
}
