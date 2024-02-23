import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:voluntiersapp/l10n/l10n.dart';
import 'package:voluntiersapp/locator.dart';
import 'package:voluntiersapp/presentation/home/home_cubit.dart';
import 'package:voluntiersapp/presentation/home/home_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:voluntiersapp/presentation/home/widgets/grid_cards.dart';
import 'mocks/mock_app_localizations.dart';

void main() {
  setUp(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await setupLocator();
  });
  testWidgets('HomePage should render correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: L10n.all,
        home: MultiProvider(
          providers: [
            Provider<AppLocalizations>(
              create: (_) => MockAppLocalizations(['en'] as String),
            ),
            Provider<HomeCubit>(
              create: (_) => getIt<HomeCubit>(),
            ),
          ],
          child: Builder(
            builder: (BuildContext context) {
              return const HomePage(title: 'Home');
            },
          ),
        ),
      ),
    );

    await tester.pumpAndSettle();

    final widgets = tester.allWidgets;

    Widget? widgetFounded;
    int countWidgetCount = 0;
    int elevatedButtonCount = 0;
    int iconsGridCount = 0;

    // verifica a árvore de widgets
    for (final widget in widgets) {
      if (widget is HomePage) {
        widgetFounded = widget;
      } else if (widget is Text && widget.data == 'Contagem: 0') {
        countWidgetCount++;
      } else if (widget is ElevatedButton) {
        elevatedButtonCount++;
      } else if (widget is CardsGrid) {
        iconsGridCount++;
      }
    }

    expect(find.byWidget(widgetFounded!), findsOneWidget);
    expect(countWidgetCount, 0);
    expect(elevatedButtonCount, 0);
    expect(iconsGridCount, 1);
  });
}
