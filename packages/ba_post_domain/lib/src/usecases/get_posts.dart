import 'package:ba_post_domain/ba_post_domain.dart';
import 'package:ba_utils/ba_utils.dart';
import 'package:oxidized/oxidized.dart';

class GetPostsUseCase implements UseCase<List<Post>, NoParams> {
  GetPostsUseCase({required this.repository});
  final PostRepository repository;

  @override
  Future<Result<List<Post>, Failure>> call(NoParams params) async {
    return repository.getPosts();
  }
}
