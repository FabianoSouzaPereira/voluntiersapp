import 'package:flutter/material.dart';
import 'package:voluntiersapp/core/router/router_config.dart';
import 'package:voluntiersapp/l10n/l10n.dart';
import 'package:voluntiersapp/locator.dart';
import 'package:voluntiersapp/ui/home/home_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:voluntiersapp/ui/home/widgets/card_cubit.dart';
import 'package:voluntiersapp/ui/users/users_cubit.dart';

void main() async {
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<HomeCubit>(
          create: (_) => getIt<HomeCubit>(),
        ),
        Provider<CardCubit>(
          create: (_) => getIt<CardCubit>(),
        ),
        Provider<UsersCubit>(
          create: (_) => getIt<UsersCubit>(),
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
