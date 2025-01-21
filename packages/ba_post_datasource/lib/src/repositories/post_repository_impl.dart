import 'package:ba_api_client/ba_api_client.dart';
import 'package:ba_post_datasource/ba_post_datasource.dart';
import 'package:ba_post_datasource/src/mappers/post_mapper.dart';
import 'package:ba_post_domain/ba_post_domain.dart';
import 'package:ba_utils/ba_utils.dart';
import 'package:oxidized/oxidized.dart';

class PostRepositoryImpl implements PostRepository {
  PostRepositoryImpl({required this.datasource});
  final PostDatasource datasource;

  @override
  Future<Result<List<Post>, Failure>> getPosts() async {
    try {
      final list = await datasource.getPosts();
      return Result.ok(list.map(PostExtension.toEntity).toList());
    } on ApiException catch (e) {
      return Result.err(ServiceFailure(message: e.userMessage));
    } catch (e) {
      return const Result.err(ServiceFailure());
    }
  }
}
