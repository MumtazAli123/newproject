import 'package:flutter/material.dart';
import 'package:newproject/home_page/avatar_post.dart';
import 'package:newproject/sideBar.dart';

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
          _buildimg(),
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
          _buildBackImg(),
        ],
      ),
    );
  }

  _buildAvatarPost() {
    return Column(
      children: const [
        StoryAvatarScreen(),
      ],
    );
  }

  _buildBackImg() {
    return Container(
      width: 600,
      height: 190,
      child: Image(image: AssetImage('./assets/images/dart13.jpeg')),
    );
  }
}

_buildimg() {
  return Image.asset(
    './assets/images/dart12.jpeg',
    fit: BoxFit.cover,
    width: double.infinity,
  );
}
