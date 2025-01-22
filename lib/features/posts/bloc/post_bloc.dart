import 'dart:async';

import 'package:ba_post_domain/ba_post_domain.dart';
import 'package:ba_utils/ba_utils.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostBlocEvent, PostBlocState> {
  PostBloc({required this.getPostsUseCase}) : super(const PostBlocState()) {
    on<LoadPosts>(_loadPosts);
  }

  final GetPostsUseCase getPostsUseCase;

  FutureOr<void> _loadPosts(
    LoadPosts event,
    Emitter<PostBlocState> emit,
  ) async {
    final response = await getPostsUseCase.call(const NoParams());

    response.when(
      ok: (posts) {
        if (posts.isEmpty) {
          emit(
            state.copyWith(
              error: 'Empty request',
              status: PostStatus.failure,
            ),
          );
        } else {
          emit(
            state.copyWith(
              posts: posts,
              status: PostStatus.loaded,
            ),
          );
        }
      },
      err: (e) {
        emit(
          PostBlocState(
            error: e.toString(),
            status: PostStatus.failure,
          ),
        );
      },
    );
  }
}
