import 'package:flutter/material.dart';
import 'package:newproject/home_page_screeens/post_list_avatar.dart';
import 'package:newproject/home_page_screeens/stories_avatar.dart';
import 'package:newproject/sideBar.dart';

import 'icons_avatar_post.dart';

class MyHomePageScreen extends StatelessWidget {
  const MyHomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: const SideBarScreen(),
      appBar: _buildAppBar(),
      body: Stack(
        children: [
          _build_Img(),
          _buildBody(),
        ],
      ),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: const Text('HomePage'),
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildAvatarPost(),
          _buildStories(),
          _buildPostListAvatar(),
          _buildBackImg(),
          _buildStories(),
        ],
      ),
    );
  }

  _buildStories() {
    return Card(
      elevation: 4,
      child: SizedBox(
        width: 600,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 5, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Stories'),
                  Icon(Icons.more_horiz),
                ],
              ),
            ),
            //  Stories Avtar
            _buildPosts(),
          ],
        ),
      ),
    );
  }

  _buildPosts() {
    return const StoriesAvatarScreen();
  }

  _buildAvatarPost() {
    return Column(
      children: const [
        IconsAvatarScreen(),
      ],
    );
  }

  _buildPostListAvatar() {
    return const PostListAvatar();
  }

  _buildBackImg() {
    return const SizedBox(
      width: 600,
      height: 190,
      child: Image(image: AssetImage('./assets/images/dart13.jpeg')),
    );
  }
}

_build_Img() {
  return SizedBox(
    child: Image.asset(
      './assets/images/dart12.jpeg',
      fit: BoxFit.cover,
      width: double.infinity,
    ),
  );
}
