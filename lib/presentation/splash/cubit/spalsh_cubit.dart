import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product_app/presentation/splash/cubit/splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitialState());

  void splashLoaded()  {
    emit(SplashLoadingState());
    try {
      // ignore: avoid_print, use_build_context_synchronously
      print('Splash Loaded');
      emit(SplashLoadedState());
    } catch (e) {
      emit(SplashErrorState(e.toString()));
    }
  }
}
