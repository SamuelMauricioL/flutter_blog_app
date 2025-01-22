import 'package:ba_api_client/ba_api_client.dart';
import 'package:ba_post_datasource/ba_post_datasource.dart';
import 'package:ba_post_domain/ba_post_domain.dart';
import 'package:ba_utils/ba_utils.dart';
import 'package:get_it/get_it.dart';

class PostModule extends ModuleDependencies {
  PostModule({required this.getIt});
  final GetIt getIt;

  @override
  void inject() {
    _registerDataSource();
    _registerRepository();
    _registerUseCase();
  }

  void _registerDataSource() {
    getIt.registerLazySingleton<PostRemoteDataSource>(
      () => PostRemoteDataSourceImpl(
        client: getIt<BaApiClient>(
          instanceName: BaInstanceName.blogsApliClient,
        ),
      ),
    );
  }

  void _registerRepository() {
    getIt.registerFactory<PostRepository>(
      () => PostRepositoryImpl(
        remoteDataSource: getIt<PostRemoteDataSource>(),
      ),
    );
  }

  void _registerUseCase() {
    getIt.registerFactory<GetPostsUseCase>(
      () => GetPostsUseCase(
        repository: getIt<PostRepository>(),
      ),
    );
  }
}
