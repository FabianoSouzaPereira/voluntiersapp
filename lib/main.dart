import 'package:flutter/material.dart';
import 'package:voluntiersapp/l10n/l10n.dart';
import 'package:voluntiersapp/locator.dart';
import 'package:voluntiersapp/ui/home/home_cubit.dart';
import 'package:voluntiersapp/ui/home/home_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:voluntiersapp/ui/home/widgets/card_cubit.dart'; // Importe o provider

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
        // Outros provedores, se houver
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomePage(title: 'Flutter Demo Home Page'),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: L10n.all,
      ),
    );
  }
}
