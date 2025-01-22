// ignore_for_file: unused_local_variable

import 'package:ba_post_domain/ba_post_domain.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blog_app/features/posts/bloc/post_bloc.dart';
import 'package:flutter_blog_app/features/posts/view/post_view.dart';
import 'package:flutter_blog_app/features/posts/widgets/post_tap_bar.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockGetPostsUseCase extends Mock implements GetPostsUseCase {}

class MockPostBloc extends MockBloc<PostBlocEvent, PostBlocState>
    implements PostBloc {}

void main() {
  late MockGetPostsUseCase mockGetPostsUseCase;
  late MockPostBloc mockPostBloc;

  setUp(() {
    mockGetPostsUseCase = MockGetPostsUseCase();
    mockPostBloc = MockPostBloc();
  });

  Widget createTestWidget() {
    return MaterialApp(
      home: BlocProvider<PostBloc>(
        create: (_) => mockPostBloc,
        child: const PostBody(),
      ),
    );
  }

  testWidgets('renders loading indicator when state is loading',
      (tester) async {
    when(() => mockPostBloc.state).thenReturn(const PostBlocState());

    await tester.pumpWidget(createTestWidget());

    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('renders PostTapBar when state is loaded', (tester) async {
    final posts = [
      const Post(id: 1, userId: 1, title: 'Test Post', body: 'Content'),
    ];
    when(() => mockPostBloc.state)
        .thenReturn(PostBlocState(status: PostStatus.loaded, posts: posts));

    await tester.pumpWidget(createTestWidget());

    expect(find.byType(PostTapBar), findsOneWidget);
  });

  testWidgets('renders error message when state is failure', (tester) async {
    const errorMessage = 'Failed to load posts';
    when(() => mockPostBloc.state).thenReturn(
      const PostBlocState(status: PostStatus.failure, error: errorMessage),
    );

    await tester.pumpWidget(createTestWidget());

    expect(find.text(errorMessage), findsOneWidget);
  });
}
