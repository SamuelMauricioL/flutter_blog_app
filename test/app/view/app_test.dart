import 'package:flutter/material.dart';
import 'package:flutter_blog_app/features/app/router/app_router.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late AppRouter appRouter;

  setUp(() {
    appRouter = AppRouter();
  });

  testWidgets('renders MaterialApp', (tester) async {
    await tester.pumpWidget(
      MaterialApp.router(
        routerConfig: appRouter.config(),
      ),
    );

    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
