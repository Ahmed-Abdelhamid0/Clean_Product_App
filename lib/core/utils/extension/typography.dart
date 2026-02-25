import 'package:flutter/cupertino.dart';
import 'package:product_app/core/themes/fonts/font_typography.dart';

extension TypographyExtension on BuildContext{
  FontTypography get typography => FontTypography(this);
}