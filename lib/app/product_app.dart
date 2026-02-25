import 'package:flutter/material.dart';
import 'package:product_app/core/routes/app_routes.dart';
import 'package:product_app/l10n/app_localizations.dart';

class ProductApp extends StatelessWidget {
  const ProductApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
    routerConfig: router,
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    supportedLocales: AppLocalizations.supportedLocales,
  );
}
