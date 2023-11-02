import 'package:get_it/get_it.dart';
import 'package:voluntiersapp/ui/home/home_cubit.dart';
import 'package:voluntiersapp/ui/home/widgets/card_cubit.dart';
import 'package:voluntiersapp/ui/settings/settings_cubit.dart';
import 'package:voluntiersapp/ui/users/users_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupLocator() async {
  // Packeges

//  final sharedPreferences = await SharedPreferences.getInstance();
//  getIt.registerLazySingleton(() => sharedPreferences);

// Core

// notifiers

// Repositories

// Services

// cubits

  getIt.registerFactory<HomeCubit>(
    () => HomeCubit(),
  );

/* Provide HomeCubit as a dependency because they are on the same screen, 
*  and there must be communication between them 
*/
  getIt.registerFactory<CardCubit>(
    () => CardCubit(),
  );

  getIt.registerFactory<UsersCubit>(
    () => UsersCubit(),
  );

  getIt.registerFactory<SettingsCubit>(
    () => SettingsCubit(),
  );
}
