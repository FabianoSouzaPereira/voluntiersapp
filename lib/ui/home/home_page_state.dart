import 'package:equatable/equatable.dart';
import 'package:voluntiersapp/ui/home/widgets/home_card.dart';

abstract class HomeState extends Equatable {
  final List<HomeCard> cards;

  const HomeState(this.cards);

  @override
  List<Object?> get props => [cards];

  HomeState copyWith({required List<HomeCard> cards});
}

class HomeInitial extends HomeState {
  const HomeInitial() : super(const []);

  @override
  HomeState copyWith({required List<HomeCard> cards}) {
    return const HomeInitial();
  }
}

class HomeStateUpdated extends HomeState {
  const HomeStateUpdated(List<HomeCard> cards) : super(cards);

  @override
  HomeState copyWith({required List<HomeCard> cards}) {
    return HomeStateUpdated([...cards]);
  }
}
