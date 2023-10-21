import 'package:flutter/material.dart';
import 'package:voluntiersapp/l10n/l10n.dart';
import 'package:voluntiersapp/locator.dart';
import 'package:voluntiersapp/ui/home/home_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() async {
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Flutter Demo Home Page'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: L10n.all,
    );
  }
}
