import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product_app/app/product_app.dart';
import 'package:product_app/core/observer/bloc_observer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //  ToDo : ===== This Line Hide Status_Bar and Keep Navigation_Bar =====
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: [SystemUiOverlay.bottom]);
  Bloc.observer=MyBlocObserver();
  runApp(const ProductApp());
}
