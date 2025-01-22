import 'package:auto_route/auto_route.dart';
import 'package:flutter_blog_app/features/app/router/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: PostRoute.page,
          initial: true,
          path: '/posts',
        ),
      ];
}
