import 'package:flutter/material.dart';
import 'package:flutter_blog_app/features/app/router/app_router.dart';
import 'package:flutter_blog_app/features/app/router/observer/app_route_observer.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        useMaterial3: true,
      ),
      routerConfig: AppRouter().config(
        navigatorObservers: () => [
          AppObserver(),
        ],
      ),
    );
  }
}
