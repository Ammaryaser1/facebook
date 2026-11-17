import 'package:flutter/material.dart';
import '../app_colors.dart';

class PostItemWidget extends StatelessWidget {
  final String pageName;
  final String pageImage;
  final String timeAgo;
  final String postImage;

  const PostItemWidget({
    super.key,
    required this.pageName,
    required this.pageImage,
    required this.timeAgo,
    required this.postImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whitecolor,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundImage: AssetImage(pageImage),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      pageName,
                      style: const TextStyle(
                        color: AppColors.blackcolor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        Text(
                          "$timeAgo • ",
                          style: const TextStyle(color: AppColors.graycolor, fontSize: 13),
                        ),
                        const Icon(Icons.public, size: 14, color: AppColors.graycolor),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_horiz, color: AppColors.blackcolor),
                ),
              ],
            ),
          ),
          const SizedBox(height: 6),

          // Post Image
          Image.asset(
            postImage,
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          // Footer
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border, color: AppColors.blackcolor, size: 26),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.chat_bubble_outline, color: AppColors.blackcolor, size: 24),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.send_outlined, color: AppColors.blackcolor, size: 24),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.bookmark_border, color: AppColors.blackcolor, size: 26),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}