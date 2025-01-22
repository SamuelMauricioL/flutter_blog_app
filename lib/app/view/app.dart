import 'package:flutter/material.dart';
import 'package:flutter_blog_app/l10n/l10n.dart';
import 'package:flutter_blog_app/posts/view/post_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const PostView(),
    );
  }
}
