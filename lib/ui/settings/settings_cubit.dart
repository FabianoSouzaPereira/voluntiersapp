import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voluntiersapp/ui/settings/settings_page_state.dart';

class SettingsCubit extends Cubit<SettingsPageState> {
  SettingsCubit() : super(SettingsPageStateInitial());
}
