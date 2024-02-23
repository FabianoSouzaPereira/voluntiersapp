import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voluntiersapp/presentation/users/users_descriptions/user_descriptions_state.dart';

class UsersDescriptionsCubit extends Cubit<UserDescriptionPageState> {
  UsersDescriptionsCubit() : super(const UserDescriptionPageStateInitial());
}
