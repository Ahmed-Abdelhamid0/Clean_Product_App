import 'package:flutter/cupertino.dart';
import 'package:product_app/core/themes/colors/app_colors.dart';
import 'package:product_app/core/themes/fonts/font_sizes.dart';
import 'package:product_app/core/themes/fonts/font_weights.dart';

const String courgetteFont = 'Courgette';

class FontTypography {
  FontTypography(this.context);

  final BuildContext context;

   TextStyle get bodySmRegular => const TextStyle(
    color: AppColors.offWhiteColor,
    fontFamily: courgetteFont,
    fontSize: FontSizes.size14,
    fontWeight: FontWeights.normalRegular,
  );

   TextStyle get bodyLargeSemi => const TextStyle(
    color: AppColors.offWhiteColor,
    fontFamily: courgetteFont,
    fontSize: FontSizes.size18,
    fontWeight: FontWeights.semiBold,
  );
}
