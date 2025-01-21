// ignore_for_file: one_member_abstracts
import 'package:ba_post_domain/ba_post_domain.dart';
import 'package:ba_utils/ba_utils.dart';
import 'package:oxidized/oxidized.dart';

abstract class PostRepository {
  Future<Result<List<Post>, Failure>> getPosts();
}
