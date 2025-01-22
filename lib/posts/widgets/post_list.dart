import 'package:ba_post_domain/ba_post_domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blog_app/posts/widgets/post_card.dart';

class PostList extends StatelessWidget {
  const PostList({required this.posts, super.key});

  final List<Post> posts;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (_, index) => PostCard(posts[index]),
      separatorBuilder: (_, __) => const SizedBox(height: 7),
      itemCount: posts.length,
    );
  }
}
