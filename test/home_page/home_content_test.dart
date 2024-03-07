import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:volunteersapp/l10n/l10n.dart';
import 'package:volunteersapp/locator.dart';
import 'package:volunteersapp/presentation/home/home_cubit.dart';
import 'package:volunteersapp/presentation/home/widgets/home_card.dart';
import 'package:volunteersapp/presentation/home/widgets/home_content.dart';

import 'mocks/mock_app_localizations.dart';
import 'mocks/home_cubit.mocks.dart';

void main() {
  setUp(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await setupLocator();
  });

  testWidgets('HomeContent should render correctly', (WidgetTester tester) async {
    final mockCubit = MockHomeCubit();

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
              create: (_) => mockCubit,
            ),
          ],
          child: Builder(
            builder: (BuildContext context) {
              return const HomeContent();
            },
          ),
        ),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.byType(AppBar), findsOneWidget);
    expect(find.byType(ListView), findsOneWidget);
    expect(find.byType(HomeCard), findsNWidgets(mockCubit.state.cards.length));

    // Limpar a instância do cubit mock do GetIt
    GetIt.I.unregister<HomeCubit>();
  });
}
