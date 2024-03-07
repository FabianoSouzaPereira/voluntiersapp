import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:volunteersapp/core/router/router_config.dart';
import 'package:volunteersapp/core/utils/apiconfig.dart';
import 'package:volunteersapp/l10n/l10n.dart';
import 'package:volunteersapp/locator.dart';
import 'package:volunteersapp/presentation/auth/auth_cubit.dart';
import 'package:volunteersapp/presentation/home/home_cubit.dart';
import 'package:volunteersapp/presentation/home/widgets/card_cubit.dart';
import 'package:volunteersapp/presentation/settings/settings_cubit.dart';
import 'package:volunteersapp/presentation/users/users/users_cubit.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferences.getInstance();
  ApiConfig apiConfig = await ApiConfig.load();
  await setupLocator();
  runApp(MyApp(apiConfig: apiConfig));
}

class MyApp extends StatelessWidget {
  final ApiConfig apiConfig;
  const MyApp({super.key, required this.apiConfig});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthCubit>(
          create: (_) => getIt<AuthCubit>(),
        ),
        Provider<HomeCubit>(
          create: (_) => getIt<HomeCubit>(),
        ),
        Provider<CardCubit>(
          create: (_) => getIt<CardCubit>(),
        ),
        Provider<UsersCubit>(
          create: (_) => getIt<UsersCubit>(),
        ),
        Provider<SettingsCubit>(
          create: (_) => getIt<SettingsCubit>(),
        ),
      ],
      child: MaterialApp.router(
        title: 'Volunters',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
          useMaterial3: true,
        ),
        routerDelegate: router.routerDelegate,
        routeInformationParser: router.routeInformationParser,
        routeInformationProvider: router.routeInformationProvider,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: L10n.all,
      ),
    );
  }
}
