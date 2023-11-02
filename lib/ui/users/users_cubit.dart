import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voluntiersapp/ui/users/users_page_state.dart';

class UsersCubit extends Cubit<UsersPageSate> {
  UsersCubit() : super(UsersPageSateInitial());
}
