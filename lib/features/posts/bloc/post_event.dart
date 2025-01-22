part of 'post_bloc.dart';

sealed class PostBlocEvent extends Equatable {
  const PostBlocEvent();

  @override
  List<Object> get props => [];
}

final class LoadPosts extends PostBlocEvent {
  const LoadPosts();
}
