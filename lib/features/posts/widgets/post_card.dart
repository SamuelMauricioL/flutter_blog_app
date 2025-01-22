import 'package:ba_post_domain/ba_post_domain.dart';
import 'package:ba_ui/ba_ui.dart';
import 'package:ba_utils/ba_utils.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard(this.post, {super.key});
  final Post post;

  @override
  Widget build(BuildContext context) {
    return BaCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: BaPadding.lgHorizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacing.lg,
                const BaChip(label: 'Community'),
                Spacing.md,
                if (post.title.isNotEmpty)
                  Text(
                    post.title.capitalize,
                    style: BaTextStyle.blackBoldXxxl,
                  ),
                if (post.description.isNotEmpty)
                  Text(
                    post.description.capitalize,
                    maxLines: 4,
                    overflow: TextOverflow.fade,
                    style: BaTextStyle.blackNormalMd,
                  ),
                const BaTextButton(
                  child: Row(
                    children: [
                      Text(
                        'Read more',
                        style: BaTextStyle.blueNormalMd,
                      ),
                      Spacing.sm,
                      Icon(
                        Icons.arrow_right_alt,
                        color: BaColorValues.blueText,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                Spacing.lg,
              ],
            ),
          ),
          const BaBanner(
            imagePath: BaAssets.banner,
          ),
        ],
      ),
    );
  }
}
