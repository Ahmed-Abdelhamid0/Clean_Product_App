import 'package:flutter/material.dart';
import 'package:product_app/core/themes/colors/app_colors.dart';
import 'package:product_app/presentation/common/ui_constants/app_assets.dart';
import 'package:product_app/presentation/common/ui_constants/app_sizes.dart';

class SplashPageView extends StatelessWidget {
  const SplashPageView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: AppColors.primaryColor,
    body: SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppAssets.productAppLogo,
            width: AppSizes.width160,
            height: AppSizes.height160,
          ),
        ],
      ),
    ),
  );
}
