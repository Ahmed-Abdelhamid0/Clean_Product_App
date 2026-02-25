import 'package:flutter/cupertino.dart';
import 'package:product_app/l10n/app_localizations.dart';

extension TranslationExtension on BuildContext {
  AppLocalizations get translation => AppLocalizations.of(this)!;
}
