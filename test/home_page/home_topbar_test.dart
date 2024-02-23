import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:voluntiersapp/locator.dart';
import 'package:voluntiersapp/presentation/home/widgets/home_topbar.dart';

void main() {
  setUp(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await setupLocator();
  });

  testWidgets('HomeTopBar should render correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: HomeTopBar(),
        ),
      ),
    );

    expect(find.byType(HomeTopBar), findsOneWidget);
    expect(find.descendant(of: find.byType(HomeTopBar), matching: find.byType(GestureDetector)), findsOneWidget);

    await tester
        .tap(find.ancestor(of: find.byType(GestureDetector), matching: find.byType(HomeTopBar), matchRoot: true));
    await tester.pumpAndSettle();

    //expect(find.byType(EndDrawer), findsOneWidget);
  });
}
