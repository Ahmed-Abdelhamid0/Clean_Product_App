import 'package:flutter/material.dart';
import 'package:product_app/core/routes/app_routes.dart';
import 'package:product_app/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class ProductApp extends StatelessWidget {
  const ProductApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
    routerConfig: router,

    localizationsDelegates: const [
      S.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: S.delegate.supportedLocales,
  );
}
