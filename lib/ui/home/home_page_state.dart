import 'package:voluntiersapp/ui/home/widgets/home_card.dart';

abstract class HomeState {
  final List<HomeCard> cards;

  HomeState(this.cards);

  // Método abstrato que todas as classes filhas devem implementar
  HomeState copyWith({required List<HomeCard> cards});
}

class HomeInitial extends HomeState {
  HomeInitial() : super(const []);

  @override
  HomeState copyWith({required List<HomeCard> cards}) {
    return HomeInitial();
  }
}

class HomeStateUpdated extends HomeState {
  HomeStateUpdated(List<HomeCard> cards) : super(cards);

  @override
  HomeState copyWith({required List<HomeCard> cards}) {
    return HomeStateUpdated([...cards]);
  }
}
