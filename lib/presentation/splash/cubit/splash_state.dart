abstract class SplashState {}

class SplashInitialState extends SplashState {}

class SplashLoadingState extends SplashState {}

class SplashLoadedState extends SplashState {}

class SplashErrorState extends SplashState {
  SplashErrorState(this.errMsag);
  final String errMsag;
}
