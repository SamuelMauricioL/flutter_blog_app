import 'package:ba_post_datasource/src/models/post_model.dart';
import 'package:ba_post_domain/ba_post_domain.dart';

extension PostExtension on PostModel {
  static Post toEntity(PostModel post) {
    return Post(
      id: post.id,
      title: post.title,
      description: post.body,
    );
  }
}
