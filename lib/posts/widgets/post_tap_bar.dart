import 'package:ba_post_domain/ba_post_domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blog_app/posts/widgets/post_list.dart';

class PostTapBar extends StatelessWidget {
  const PostTapBar({required this.posts, super.key});

  final List<Post> posts;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          // controller: _scrollController,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            const SliverAppBar(
              title: SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Blog',
                      // style: $font.bold.copyWith(fontSize: 20),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'Subtitulo de ejemplo',
                      // style: $font.medium.copyWith(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          ],
          body: Column(
            children: [
              const TabBar(
                tabs: [
                  Tab(text: 'Posts'),
                  Tab(text: 'Nothing'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    PostList(posts: posts),
                    const SizedBox.shrink(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
