import 'package:flutter/material.dart';

import '../app_colors.dart';

class CreateStoryWidget extends StatelessWidget {
  final String profileImage;

  const CreateStoryWidget({
    super.key,
    required this.profileImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 112,
      margin: const EdgeInsets.only(left: 12, right: 4),
      decoration: BoxDecoration(
        color: AppColors.whitecolor,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.graycolor.withValues(alpha: 0.3)),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Expanded(
                flex: 3,
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(13)),
                  child: Image.asset(
                    profileImage,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 6),
                    child: Text(
                      "Create a\nStory",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.blackcolor,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        height: 1.1,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 34,
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: AppColors.bluecolor,
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.whitecolor, width: 2.5),
              ),
              child: const Icon(
                Icons.add,
                color: AppColors.whitecolor,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}