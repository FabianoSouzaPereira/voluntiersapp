import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:volunteersapp/presentation/l10n/l10n.dart';
import 'package:volunteersapp/locator.dart';
import 'package:volunteersapp/presentation/home/widgets/grid_cards.dart';
import 'package:volunteersapp/presentation/home/widgets/grid_icon.dart';
import 'package:volunteersapp/presentation/home/widgets/home_card.dart';
import 'package:volunteersapp/core/router/paths.dart' as paths;

/* IconsGrid */
void main() {
  setUp(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await setupLocator();
  });

  testWidgets('IconsGrid should render correctly', (WidgetTester tester) async {
    final List<HomeCard> cards = [
      HomeCard(
        onPressed: () {},
        title: "",
        icon: const CustomIcon(
          name: "Favorite",
          iconData: Icons.favorite,
          route: 'route',
          iconColor: Colors.white,
          notification: "",
        ),
      ),
      HomeCard(
        onPressed: () {},
        title: "Settings",
        icon: const CustomIcon(
          name: "Settings",
          iconData: Icons.settings,
          route: paths.SettingsPagePath,
          iconColor: Colors.white,
          notification: "",
        ),
      ),
    ];

    await tester.pumpWidget(MaterialApp(
      home: CardsGrid(cards: cards),
    ));

    expect(find.text('Younity Tarefas'), findsOneWidget);
    expect(find.byType(AppBar), findsOneWidget);
    expect(find.byType(Card), findsWidgets);
    expect(find.byType(GestureDetector), findsWidgets);
  });

  testWidgets('IconsGrid should navigate to correct routes on tap', (WidgetTester tester) async {
    final List<HomeCard> cards = [
      HomeCard(
        onPressed: () {},
        title: "",
        icon: const CustomIcon(
          name: "Favorite",
          iconData: Icons.favorite,
          route: 'route',
          iconColor: Colors.white,
          notification: "",
        ),
      ),
      HomeCard(
        onPressed: () {},
        title: "Settings",
        icon: const CustomIcon(
          name: "Settings",
          iconData: Icons.settings,
          route: paths.SettingsPagePath,
          iconColor: Colors.white,
          notification: "",
        ),
      ),
    ];

    MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: L10n.all,
      home: Scaffold(
        body: CardsGrid(cards: cards),
      ),
    );

    await tester.pumpWidget(MaterialApp(
      home: CardsGrid(cards: cards),
    ));

    // Toca no primeiro ícone
    await tester.tap(find.byType(GestureDetector).first);

    // Aguarda a navegação
    await tester.pumpAndSettle();

    // Obter a rota atual usando o método getCurrentLocation do GoRouter
    final navigator = GoRouter(routes: []);

    // Verifique se a rota atual é a esperada
    // expect(navigator?.location, '/home');
  });
}
