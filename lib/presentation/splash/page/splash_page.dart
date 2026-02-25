import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:product_app/core/constatnts/routes_constants.dart';
import 'package:product_app/presentation/splash/cubit/spalsh_cubit.dart';
import 'package:product_app/presentation/splash/cubit/splash_state.dart';
import 'package:product_app/presentation/splash/widgets/splash_page_view.dart';

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
    Future.delayed(
      const Duration(seconds: 4),
      () => context.go(RoutesConstants.home),
    );
  }

  @override
  Widget build(BuildContext context) => BlocBuilder<SplashCubit, SplashState>(
    builder: (context, state) {
      if (state is SplashLoadedState) {
        if (kDebugMode) {
          print('Loaded');
        }
        return const SplashPageView();
      } else {
        return Container();
      }
    },
  );
}
