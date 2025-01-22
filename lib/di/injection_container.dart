import 'package:ba_api_client/ba_api_client.dart';
import 'package:ba_utils/ba_utils.dart';
import 'package:flutter_blog_app/features/posts/di/post_module.dart';
import 'package:get_it/get_it.dart';

class Get {
  static final it = GetIt.instance;

  static Future<void> init() async {
    await _injectResources();
    final modules = <ModuleDependencies>[
      PostModule(getIt: it),
    ];
    for (final module in modules) {
      module.inject();
    }
  }

  static Future<void> _injectResources() async {
    final dio = await BaDioFactory(
      baseUrl: 'https://jsonplaceholder.typicode.com',
      isDevMode: true,
    ).getDio();

    it.registerLazySingleton<BaApiClient>(
      () => BaApiClientImpl(dio),
      instanceName: BaInstanceName.blogsApliClient,
    );
  }
}
