import 'package:flutter_blog_app/app/app.dart';
import 'package:flutter_blog_app/posts/view/post_view.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(PostView), findsOneWidget);
    });
  });
}
