import 'package:flutter/material.dart';
import 'package:flutter_blog_app/features/posts/view/post_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const PostView(),
    );
  }
}
