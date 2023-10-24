import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voluntiersapp/ui/home/home_cubit.dart';
import 'package:voluntiersapp/ui/home/widgets/home_card.dart';

class CardCubit extends Cubit<List<HomeCard>> {
  final HomeCubit homeCubit;

  CardCubit(this.homeCubit) : super([]);

  void addCard(HomeCard card) {
    state.add(card);
    emit(state.toList());
  }

  void removeCard(HomeCard card) {
    state.remove(card);
    emit(state.toList());
  }
}
