import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voluntiersapp/ui/home/home_page_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
}
