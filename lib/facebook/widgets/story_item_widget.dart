import 'package:flutter/material.dart';
import '../app_colors.dart';

class StoryItemWidget extends StatelessWidget {
  final String storyImage;
  final String userImage;

  const StoryItemWidget({
    super.key,
    required this.storyImage,
    required this.userImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 112,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: AppColors.graycolor.withValues(alpha: 0.2),
        image: DecorationImage(
          image: AssetImage(storyImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 8,
            left: 8,
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: const BoxDecoration(
                color: AppColors.bluecolor,
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage(userImage),
              ),
            ),
          ),
        ],
      ),
    );
  }
}