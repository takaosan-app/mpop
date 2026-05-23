import 'package:flutter_test/flutter_test.dart';

import 'package:mpop/main.dart';

void main() {
  testWidgets('shows the park app shell', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('My Park Our Parks'), findsOneWidget);
    expect(find.text('My Park'), findsWidgets);
    expect(find.text('Our Parks'), findsOneWidget);
  });

  testWidgets('switches to Our Parks tab', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('Our Parks'));
    await tester.pump();

    expect(find.text('みんなの公園投稿を探します。'), findsOneWidget);
  });
}
