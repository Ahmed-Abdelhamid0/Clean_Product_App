import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:product_app/core/constatnts/routes_constants.dart';
import 'package:product_app/presentation/home/cubit/home_cubit.dart';
import 'package:product_app/presentation/home/page/home_page.dart';
import 'package:product_app/presentation/splash/cubit/spalsh_cubit.dart';
import 'package:product_app/presentation/splash/page/splash_page.dart';

final GoRouter router = GoRouter(routes: _routesList);

List<RouteBase> _routesList = [
  GoRoute(
    path: RoutesConstants.splash,
    builder: (context, state) => BlocProvider(
      create: (context) => SplashCubit(),
      child: const SplashPage(),
    ),
  ),

  GoRoute(
    path: RoutesConstants.home,
    builder: (context, state) =>
        BlocProvider(create: (context) => HomeCubit(), child: const HomePage()),
  ),
];
