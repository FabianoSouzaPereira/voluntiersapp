import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:voluntiersapp/presentation/home/widgets/grid_icon.dart';
import 'package:voluntiersapp/presentation/home/widgets/home_card.dart';

void main() {
  testWidgets('HomeCard should render correctly', (WidgetTester tester) async {
    final card = HomeCard(
      onPressed: () {},
      title: 'Test Card',
      icon: const CustomIcon(
        name: "Favorite",
        iconData: Icons.favorite,
        route: 'route',
        iconColor: Colors.white,
        notification: "",
      ),
    );

    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: Center(child: card),
      ),
    ));

    // Verifica se o widget HomeCard foi renderizado corretamente
    expect(find.text('Test Card'), findsOneWidget);
    expect(find.byType(Draggable), findsOneWidget);
  });

  testWidgets('HomeCard should respond to drag', (WidgetTester tester) async {
    final card = HomeCard(
      onPressed: () {},
      title: 'Test Card',
      icon: const CustomIcon(
        name: "Favorite",
        iconData: Icons.favorite,
        route: 'route',
        iconColor: Colors.white,
        notification: "",
      ),
    );

    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: Center(child: card),
      ),
    ));

    // Inicia o movimento de arrastar
    await tester.tap(find.byType(Draggable));

    // Move o card pela tela
    await tester.drag(find.byType(Draggable), const Offset(100.0, 100.0));

    // Aguarda a renderização após o arrasto
    await tester.pump();

    // Verifica se a posição do card foi alterada
    expect(card.initialX, 100.0);
    expect(card.initialY, 100.0);
  });
}
