import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product_app/generated/l10n.dart';
import 'package:product_app/presentation/splash/cubit/spalsh_cubit.dart';
import 'package:product_app/presentation/splash/page/splash_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class ProductApp extends StatelessWidget {
  const ProductApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(

    localizationsDelegates: const [
      S.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: S.delegate.supportedLocales,
    home: BlocProvider(
      create: (context)=>SplashCubit(),
      child: const SplashPage(),
      ),
  );
}
