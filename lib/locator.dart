import 'dart:io';

import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:voluntiersapp/data/auth/auth_repository_impl.dart';
import 'package:voluntiersapp/data/user/user_repository_impl.dart';
import 'package:voluntiersapp/presentation/auth/auth_cubit.dart';
import 'package:voluntiersapp/presentation/home/home_cubit.dart';
import 'package:voluntiersapp/presentation/home/widgets/card_cubit.dart';
import 'package:voluntiersapp/presentation/settings/settings_cubit.dart';
import 'package:voluntiersapp/presentation/users/users/users_cubit.dart';
import 'package:voluntiersapp/presentation/users/users_descriptions/user_descriptions_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupLocator() async {
  // Packeges

  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton(() => sharedPreferences);

// Core

// notifiers

// Repositories
getIt.registerFactory<HttpClient>(() => HttpClient());

getIt.registerFactory<UserRepositoryImpl>(
  () => UserRepositoryImpl(getIt.get()),
);

getIt.registerFactory<AuthRepositoryImpl>(
  () => AuthRepositoryImpl(getIt.get()),
);

// Services

// cubits

  getIt.registerFactory<AuthCubit>(
    () => AuthCubit(getIt.get()),
  );

  getIt.registerFactory<HomeCubit>(
    () => HomeCubit(),
  );

  getIt.registerFactory<CardCubit>(
    () => CardCubit(),
  );

  getIt.registerFactory<UsersCubit>(
    () => UsersCubit(),
  );

  getIt.registerFactory<SettingsCubit>(
    () => SettingsCubit(),
  );

  getIt.registerFactory<UsersDescriptionsCubit>(
    () => UsersDescriptionsCubit(),
  );
}
