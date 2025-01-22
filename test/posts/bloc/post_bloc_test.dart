// ignore_for_file: lines_longer_than_80_chars, depend_on_referenced_packages

import 'package:ba_post_domain/ba_post_domain.dart';
import 'package:ba_utils/ba_utils.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_blog_app/features/posts/bloc/post_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:oxidized/oxidized.dart';

class MockGetPostsUseCase extends Mock implements GetPostsUseCase {}

void main() {
  late PostBloc postBloc;
  late MockGetPostsUseCase mockGetPostsUseCase;

  setUp(() {
    mockGetPostsUseCase = MockGetPostsUseCase();
    postBloc = PostBloc(getPostsUseCase: mockGetPostsUseCase);
  });

  tearDown(() {
    postBloc.close();
  });

  group('PostBloc', () {
    const posts = [
      Post(id: 1, userId: 1, title: 'Test Post', body: 'Content'),
    ];
    const failureMessage = 'Something went wrong';

    blocTest<PostBloc, PostBlocState>(
      'emits [PostStatus.loading, PostStatus.loaded] when LoadPosts is successful',
      build: () {
        when(() => mockGetPostsUseCase.call(const NoParams())).thenAnswer(
          (_) async => const Result.ok(posts),
        );
        return postBloc;
      },
      act: (bloc) => bloc.add(const LoadPosts()),
      expect: () => [
        const PostBlocState(status: PostStatus.loaded, posts: posts),
      ],
    );

    blocTest<PostBloc, PostBlocState>(
      'emits [PostStatus.loading, PostStatus.failure] with empty request error when no posts are returned',
      build: () {
        when(() => mockGetPostsUseCase.call(const NoParams())).thenAnswer(
          (_) async => const Result.ok(<Post>[]),
        );
        return postBloc;
      },
      act: (bloc) => bloc.add(const LoadPosts()),
      expect: () => [
        const PostBlocState(status: PostStatus.failure, error: 'Empty request'),
      ],
    );

    blocTest<PostBloc, PostBlocState>(
      'emits [PostStatus.loading, PostStatus.failure] when LoadPosts fails',
      build: () {
        when(() => mockGetPostsUseCase.call(const NoParams())).thenAnswer(
          (_) async =>
              const Result.err(ServiceFailure(message: failureMessage)),
        );
        return postBloc;
      },
      act: (bloc) => bloc.add(const LoadPosts()),
      expect: () => const [
        PostBlocState(status: PostStatus.failure, error: failureMessage),
      ],
    );
  });
}
