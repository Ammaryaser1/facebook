import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'widgets/create_story_widget.dart';
import 'widgets/story_item_widget.dart';
import 'widgets/post_item_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final stories = [
    {"storyImage": "assets/images/story1.jpg", "userImage": "assets/images/user1.jpg"},
    {"storyImage": "assets/images/story2.jpg", "userImage": "assets/images/user2.jpg"},
    {"storyImage": "assets/images/story3.jpg", "userImage": "assets/images/user3.jpg"},
    {"storyImage": "assets/images/story4.jpg", "userImage": "assets/images/user4.jpg"},
    ];

    return DefaultTabController(
    length: 6,
    child: Scaffold(
    backgroundColor: AppColors.whitecolor,
    appBar: AppBar(
    backgroundColor: AppColors.whitecolor,
    elevation: 0,
    title: const Text(
    "Facebook",
    style: TextStyle(
    color: AppColors.bluecolor,
    fontSize: 28,
    fontWeight: FontWeight.bold,
    letterSpacing: -0.5,
    ),
    ),
    actions: [
    IconButton(
    onPressed: () {},
    icon: const Icon(Icons.add_circle, color: AppColors.blackcolor, size: 26),
    ),
    IconButton(
    onPressed: () {},
    icon: const Icon(Icons.search, color: AppColors.blackcolor, size: 26),
    ),
      IconButton(
        onPressed: () {},
        icon: Image.asset(
          "assets/images/Vector.png",
          width: 24,
          height: 24,
        ),
      ),
      const SizedBox(width: 6),
    ],
    bottom: TabBar(
    indicatorColor: AppColors.bluecolor,
    indicatorWeight: 2.5,
    labelColor: AppColors.bluecolor,
    unselectedLabelColor: AppColors.graycolor,
    dividerColor: AppColors.graycolor.withValues(alpha: 0.3),
    tabs: [
    const Tab(icon: Icon(Icons.home_filled, size: 28)),
    const Tab(icon: Icon(Icons.ondemand_video, size: 26)),
    const Tab(icon: Icon(Icons.storefront_outlined, size: 26)),
    const Tab(icon: Icon(Icons.account_circle_outlined, size: 26)),
    const Tab(icon: Icon(Icons.notifications_none, size: 26)),
    Tab(
    icon: CircleAvatar(
    radius: 13,
    backgroundColor: AppColors.graycolor.withValues(alpha: 0.3),
    backgroundImage: const AssetImage("assets/images/profile.jpg"),
    ),
    ),
    ],
    ),
    ),
    body: ListView(
    children: [
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
    child: Row(
    children: [
    CircleAvatar(
    radius: 22,
    backgroundColor: AppColors.graycolor.withValues(alpha: 0.3),
    backgroundImage: const AssetImage("assets/images/profile.jpg"),
    ),
    const SizedBox(width: 12),
    const Expanded(
    child: Text(
    "What's in Your Mind?",
    style: TextStyle(
    color: AppColors.graycolor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    ),
    ),
    ),
    IconButton(
    onPressed: () {},
    icon: const Icon(
    Icons.photo_library,
    color: Color(0xFF45BD62),
    size: 26,
    ),
    ),
    ],
    ),
    ),
    Divider(thickness: 2, color: AppColors.graycolor.withValues(alpha: 0.25), height: 2),

    Container(
    height: 195,
    padding: const EdgeInsets.symmetric(vertical: 12),
    child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: stories.length + 1,
    itemBuilder: (context, index) {
    if (index == 0) {
    return const CreateStoryWidget(profileImage: "assets/images/profile.jpg");
    }
    return StoryItemWidget(
    storyImage: stories[index - 1]["storyImage"]!,
    userImage: stories[index - 1]["userImage"]!,
    );
    },
    ),
    ),
    Divider(thickness: 2, color: AppColors.graycolor.withValues(alpha: 0.25), height: 2),
      ListView.separated(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    itemCount: 3,
    separatorBuilder: (context, index) => Divider(
    thickness: 2,
    color: AppColors.graycolor.withValues(alpha: 0.25),
    height: 2,
    ),
    itemBuilder: (context, index) => const PostItemWidget(
    pageName: "Route",
    pageImage: "assets/images/route_logo.jpg",
    timeAgo: "12h",
    postImage: "assets/images/route_post.jpg",
    ),
    ),
    ],
    ),
    ),
    );
  }
}