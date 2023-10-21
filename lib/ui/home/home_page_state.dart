abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeStateUpdated extends HomeState {
  final int counter;

  HomeStateUpdated(this.counter);
}
