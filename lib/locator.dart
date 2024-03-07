import 'dart:io';

import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:volunteersapp/data/auth/auth_repository_impl.dart';
import 'package:volunteersapp/data/user/user_repository_impl.dart';
import 'package:volunteersapp/presentation/auth/auth_cubit.dart';
import 'package:volunteersapp/presentation/home/home_cubit.dart';
import 'package:volunteersapp/presentation/home/widgets/card_cubit.dart';
import 'package:volunteersapp/presentation/settings/settings_cubit.dart';
import 'package:volunteersapp/presentation/users/users/users_cubit.dart';
import 'package:volunteersapp/presentation/users/users_descriptions/user_descriptions_cubit.dart';

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
