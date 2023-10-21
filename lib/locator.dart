import 'package:get_it/get_it.dart';
import 'package:voluntiersapp/ui/home/home_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupLocator() async {
// Packeges

// Core

// notifiers

// Repositories

// Services

// cubits

  getIt.registerFactory<HomeCubit>(
    () => HomeCubit(),
  );
}
