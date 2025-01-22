part of 'post_bloc.dart';

enum PostStatus { loading, loaded, failure }

class PostBlocState extends Equatable {
  const PostBlocState({
    this.posts = const <Post>[],
    this.status = PostStatus.loading,
    this.error = '',
  });

  final List<Post> posts;
  final PostStatus status;
  final String error;

  PostBlocState copyWith({
    List<Post>? posts,
    PostStatus? status,
    String? error,
  }) {
    return PostBlocState(
      posts: posts ?? this.posts,
      status: status ?? this.status,
      error: error ?? this.error,
    );
  }

  @override
  List<Object> get props => [posts, status, error];
}
