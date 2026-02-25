import 'package:bloc/bloc.dart';
import 'package:product_app/presentation/home/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  Future<void> createHome() async {
    emit(HomeLoading());
    try {
      await Future.delayed(const Duration(seconds: 3));
      emit(HomeLoaded());
    } catch (e) {
      emit(HomeFailure(errMsg: e.toString()));
    }
  }
}
