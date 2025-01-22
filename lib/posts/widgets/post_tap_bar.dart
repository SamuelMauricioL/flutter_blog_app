import 'package:ba_post_domain/ba_post_domain.dart';
import 'package:ba_ui/ba_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blog_app/posts/widgets/post_list.dart';

class PostTapBar extends StatelessWidget {
  const PostTapBar({required this.posts, super.key});

  final List<Post> posts;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            const SliverAppBar(
              title: SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Posts',
                      style: BaTextStyle.blackBoldlXl,
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'community posts',
                      style: BaTextStyle.blackNormalMd,
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
                  Tab(text: 'WIP'),
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
