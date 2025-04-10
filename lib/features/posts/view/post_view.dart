import 'package:auto_route/auto_route.dart';
import 'package:ba_post_domain/ba_post_domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blog_app/di/injection_container.dart';
import 'package:flutter_blog_app/features/posts/bloc/post_bloc.dart';
import 'package:flutter_blog_app/features/posts/widgets/post_tap_bar.dart';

@RoutePage(name: 'PostRoute')
class PostView extends StatelessWidget {
  const PostView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PostBloc>(
      create: (context) => PostBloc(
        getPostsUseCase: Get.it<GetPostsUseCase>(),
      )..add(const LoadPosts()),
      child: const PostBody(),
    );
  }
}

class PostBody extends StatelessWidget {
  const PostBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<PostBloc, PostBlocState>(
        builder: (context, state) {
          switch (state.status) {
            case PostStatus.loading:
              return const Center(child: CircularProgressIndicator());
            case PostStatus.loaded:
              return PostTapBar(posts: state.posts);
            case PostStatus.failure:
              return Center(child: Text(state.error));
          }
        },
      ),
    );
  }
}
