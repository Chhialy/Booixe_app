import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:my_app/main.dart';
import 'package:my_app/counter.dart';

void main() {
  testWidgets('Counter increments and navigation works',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider(create: (_) => Counter(), child: const MyApp()),
    );

    // Verify initial counter on Home
    expect(find.text('Counter: 0'), findsOneWidget);

    // Tap FAB (the one with the add icon) to increment
    final fab = find.widgetWithIcon(FloatingActionButton, Icons.add);
    expect(fab, findsOneWidget);
    await tester.tap(fab);
    await tester.pumpAndSettle();

    // Value should be 1 now
    expect(find.text('Counter: 1'), findsOneWidget);

    // Navigate to Details page
    await tester.tap(find.text('Go to Details'));
    await tester.pumpAndSettle();

    // Details page should show the same counter value
    expect(find.text('Counter (details): 1'), findsOneWidget);
  });
}
