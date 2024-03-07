import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:volunteersapp/presentation/users/users/users_page_state.dart';

class UsersCubit extends Cubit<UsersPageState> {
  UsersCubit() : super(UsersPageStateInitial());

  Future<void> init() async {
    emit(UsersPageLoaded(listUsers: const []));
  }
}
