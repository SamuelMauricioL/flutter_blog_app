import 'package:ba_post_domain/ba_post_domain.dart';
import 'package:ba_ui/ba_ui.dart';
import 'package:ba_utils/ba_utils.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard(this.post, {super.key});
  final Post post;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: BaColorValues.cardBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
        side: const BorderSide(color: BaColorValues.cardBorder),
      ),
      elevation: 0,
      margin: const EdgeInsets.all(13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Chip(
                  label: const Text(
                    'Community',
                    style: BaTextStyle.whiteLightSm,
                  ),
                  backgroundColor: BaColorValues.chipBackground,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                const SizedBox(height: 10),
                if (post.title.isNotEmpty)
                  Text(
                    post.title.capitalize,
                    style: BaTextStyle.blackBoldXxxl,
                  ),
                if (post.body.isNotEmpty)
                  Text(
                    post.body.capitalize,
                    maxLines: 4,
                    overflow: TextOverflow.fade,
                    style: BaTextStyle.blackNormalMd,
                  ),
                TextButton(
                  style: ButtonStyle(
                    padding: WidgetStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(0),
                    ),
                  ),
                  onPressed: onPressed,
                  child: const Row(
                    children: [
                      Text(
                        'Read more',
                        style: BaTextStyle.blueNormalMd,
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.arrow_right_alt,
                        color: BaColorValues.blueText,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 150,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: BaAssets.banner,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onPressed() {}
}
