import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voluntiersapp/ui/home/home_page_state.dart';

class HomeCubit extends Cubit<HomeState> {
  int counter = 0;

  HomeCubit() : super(HomeInitial());

  void incrementCounter() {
    final currentState = state;
    if (currentState is HomeStateUpdated) {
      final newCounter = currentState.counter + 1;

      print('incremente state = $newCounter');

      emit(HomeStateUpdated(newCounter));
    } else if (currentState is HomeInitial) {
      emit(HomeStateUpdated(1));
    }
  }
}
