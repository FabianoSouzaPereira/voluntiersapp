import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voluntiersapp/ui/home/home_page_state.dart';
import 'package:voluntiersapp/ui/home/widgets/home_card.dart';

class HomeCubit extends Cubit<HomeState> {
  final List<HomeCard> cards = [];

  HomeCubit() : super(HomeInitial());

  void onCardAdded(HomeCard card) {
    if (!cards.contains(card)) {
      cards.add(card);
      emit(HomeStateUpdated(List<HomeCard>.from(cards)));
    }
  }
}
