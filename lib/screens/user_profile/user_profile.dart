import 'package:flutter/material.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  final double coverHeight = 200;
  final double profileHeight = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      clipBehavior: Clip.none,
      padding: EdgeInsets.zero,
      children: <Widget>[
        buildBody(),
        buildListView(),
      ],
    ));
  }

  // _buildAppBar() {}
  //
  Widget buildBody() {
    final bottom = profileHeight / 2;
    final top = coverHeight - profileHeight / 2;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomLeft,
      children: [
        Container(
            margin: EdgeInsets.only(bottom: bottom), child: buildCoverImage()),
        Positioned(top: top, child: buildProfileImage()),
      ],
    );
  }

  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Image.asset(
          './assets/images/dart2.png',
          width: double.infinity,
          height: 200,
          fit: BoxFit.cover,
        ),
      );

  Widget buildProfileImage() => Padding(
        padding: const EdgeInsets.all(4.0),
        child: CircleAvatar(
          radius: profileHeight / 2,
          backgroundColor: Colors.grey,
          backgroundImage: const AssetImage('./assets/images/dart10.jpeg'),
        ),
      );

  Widget buildListView() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: const [
            ListTile(
              title: Text("ali Shah"),
              subtitle: Text('Engineer'),
            ),
          ],
        ),
      );
}
