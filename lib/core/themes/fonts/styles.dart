
import 'package:flutter/cupertino.dart';
import 'package:product_app/core/themes/colors/app_colors.dart';
import 'package:product_app/core/themes/fonts/font_sizes.dart';
import 'package:product_app/core/themes/fonts/font_weights.dart';

const String courgetteFont = 'Courgette';
class AppFontStyles {
  static TextStyle typography() =>  const TextStyle(
    color: AppColors.offWhiteColor,
    fontFamily: courgetteFont,
    fontSize: FontSizes.size22,
    fontWeight: FontWeights.normalRegular,
  );
}
