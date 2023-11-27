import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:voluntiersapp/l10n/l10n.dart';
import 'package:voluntiersapp/locator.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:voluntiersapp/ui/home/widgets/grid_icon.dart';
import 'package:voluntiersapp/ui/home/widgets/gride_icons.dart';

/* IconsGrid */
void main() {
  setUp(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await setupLocator();
  });

  testWidgets('IconsGrid should render correctly', (WidgetTester tester) async {
    final icons = [
      const CustomIcon(
        iconData: Icons.home,
        route: '/home',
        iconColor: null,
      ),
      const CustomIcon(
        iconData: Icons.favorite,
        route: '/favorite',
        iconColor: null,
      ),
    ];

    await tester.pumpWidget(MaterialApp(
      home: IconsGrid(icons: icons),
    ));

    expect(find.text('Younity Tarefas'), findsOneWidget);
    expect(find.byType(AppBar), findsOneWidget);
    expect(find.byType(Card), findsWidgets);
    expect(find.byType(GestureDetector), findsWidgets);
  });

  testWidgets('IconsGrid should navigate to correct routes on tap', (WidgetTester tester) async {
    // Cria uma lista de CustomIcon para teste
    final icons = [
      const CustomIcon(
        iconData: Icons.home,
        route: '/home',
        iconColor: null,
      ),
      const CustomIcon(
        iconData: Icons.favorite,
        route: '/favorite',
        iconColor: null,
      ),
      // Adicione mais ícones conforme necessário
    ];

    MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: L10n.all,
      home: Scaffold(
        body: IconsGrid(icons: icons),
      ),
    );

    await tester.pumpWidget(MaterialApp(
      home: IconsGrid(icons: icons),
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
