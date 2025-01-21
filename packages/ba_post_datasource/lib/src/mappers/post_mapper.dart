import 'package:ba_post_datasource/src/models/post_model.dart';
import 'package:ba_post_domain/ba_post_domain.dart';

extension PostExtension on PostModel {
  static Post toEntity(PostModel post) {
    return Post(
      userId: post.userId,
      id: post.id,
      title: post.title,
      body: post.body,
    );
  }
}
