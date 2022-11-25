import 'package:flutter/material.dart';
import 'package:newproject/home_page/icons_avatar_post.dart';
import 'package:newproject/home_page/post_list_avatar.dart';
import 'package:newproject/home_page/stories_avatar.dart';
import 'package:newproject/sideBar.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: Scaffold(
          drawer: const SideBarScreen(),
          appBar: _buildAppBar(),
          body: _buildBody(),
        ),
      );

  _buildAppBar() {
    return AppBar(
      elevation: 0,
      title: const Text(
        'Wallet',
      ),
      // leading: IconButton(
      //   icon: const Icon(Icons.message),
      //   onPressed: () {},
      // ),
      actions: const [Icon(Icons.notifications), Icon(Icons.search)],
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('./assets/images/dart17.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      bottom: const TabBar(indicatorColor: Colors.green, indicatorWeight: 5,
          // isScrollable: true,
          tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: 'Home',
            ),
            Tab(
              icon: Icon(Icons.home),
              text: 'Home',
            ),
            Tab(
              icon: Icon(Icons.home),
              text: 'Home',
            ),
            Tab(
              icon: Icon(Icons.home),
              text: 'Home',
            ),
          ]),
    );
  }

  _buildBody() {
    return TabBarView(
      children: [
        buildPageHome('Home'),
        buildPageApp('App'),
        buildPageMobile('Mobile'),
        buildPageSend('Send'),
      ],
    );
  }

  buildPageHome(String text) {
    return Text('data');
  }

  buildPageApp(String text) {
    return Container(
      child: const IconsAvatarScreen(),
    );
  }

  buildPageMobile(String text) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          PostListAvatar(),
          PostListAvatar(),
        ],
      ),
    );
  }

  buildPageSend(String text) {
    return Column(
      children: [
        _buildPost(),
        PostListAvatar(),
      ],
    );
  }

  _buildPost() {
    return Card(
      elevation: 4,
      child: Container(
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
    return StoriesAvatarScreen();
  }
}
