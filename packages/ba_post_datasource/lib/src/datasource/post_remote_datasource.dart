// ignore_for_file: one_member_abstracts

import 'package:ba_api_client/ba_api_client.dart';
import 'package:ba_post_datasource/src/models/post_model.dart';

abstract class PostDatasource {
  Future<List<PostModel>> getPosts();
}

class PostRemoteDatasourceImpl implements PostDatasource {
  PostRemoteDatasourceImpl({
    required this.client,
  });

  final BaApiClient client;

  @override
  Future<List<PostModel>> getPosts() async {
    try {
      final response = await client.get(endPoint: '/posts');
      final posts = response.data as List<dynamic>;
      return postModelListFromJson(posts.toString());
    } catch (e) {
      rethrow;
    }
  }
}
