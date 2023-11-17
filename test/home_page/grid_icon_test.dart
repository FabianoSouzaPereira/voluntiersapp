import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:voluntiersapp/ui/home/widgets/grid_icon.dart';

void main() {
  testWidgets('CustomIcon widget test', (WidgetTester tester) async {
    // Build our widget and trigger a frame.
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: CustomIcon(
            iconData: Icons.star,
            route: '/example',
          ),
        ),
      ),
    );

    // Verifique se o widget foi construído corretamente.
    expect(find.byType(CustomIcon), findsOneWidget);
    expect(find.byType(GestureDetector), findsOneWidget);
    expect(find.byType(Card), findsOneWidget);
    expect(find.byType(Icon), findsOneWidget);

    // Execute uma ação no widget (toque no GestureDetector).
    await tester.tap(find.byType(GestureDetector));

    // Aguarde a animação de transição terminar.
    await tester.pumpAndSettle();

    // Verifique se a rota foi empurrada.
    expect(find.text('/example'), findsOneWidget);
  });
}
