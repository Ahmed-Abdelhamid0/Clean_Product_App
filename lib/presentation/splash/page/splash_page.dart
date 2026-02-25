import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product_app/core/themes/colors/app_colors.dart';
import 'package:product_app/core/themes/fonts/styles.dart';
import 'package:product_app/generated/l10n.dart';
import 'package:product_app/presentation/splash/cubit/spalsh_cubit.dart';
import 'package:product_app/presentation/splash/cubit/splash_state.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SplashCubit>(context).splashLoaded();
  }

  @override
  Widget build(BuildContext context) => BlocBuilder<SplashCubit, SplashState>(
    builder: (context, state) {
      if (state is SplashLoadedState) {
        if (kDebugMode) {
          print('Loaded');
        }
        return Scaffold(
          backgroundColor: AppColors.primaryColor,
          body: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  S.of(context).welcomeTitle,
                  style: AppFontStyles.typography(),
                ),
                Text(
                  S.of(context).productAppTitle,
                  style: AppFontStyles.typography(),
                ),
              ],
            ),
          ),
        );
      } else {
        return Container();
      }
    },
  );
}
