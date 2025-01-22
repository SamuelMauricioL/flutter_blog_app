import 'package:flutter_blog_app/features/app/app.dart';
import 'package:flutter_blog_app/features/posts/view/post_view.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(PostView), findsOneWidget);
    });
  });
}
