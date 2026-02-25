abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {}

class HomeFailure extends HomeState {
  HomeFailure({required this.errMsg});

  final String errMsg;
}
