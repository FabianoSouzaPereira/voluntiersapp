import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voluntiersapp/ui/home/home_cubit.dart';
import 'package:voluntiersapp/ui/home/widgets/home_card.dart';

class CardCubit extends Cubit<List<HomeCard>> {
  final HomeCubit homeCubit;

  CardCubit(this.homeCubit) : super([]);

  void reorderCards(int oldIndex, int newIndex) {
    if (newIndex > oldIndex) {
      newIndex -= 1;
    }
    final item = state.removeAt(oldIndex);
    state.insert(newIndex, item);

    emit(state.toList());
  }

  void addCard(HomeCard card) {
    state.add(card);
    emit(state.toList());

    // Envia uma notificação para o HomeCubit
    homeCubit.onCardAdded(card);
  }

  void removeCard(HomeCard card) {
    state.remove(card);
    emit(state.toList());
  }
}
