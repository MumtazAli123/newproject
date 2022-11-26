import 'package:flutter/material.dart';

class StoriesAvatarScreen extends StatelessWidget {
  const StoriesAvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildStoriesAvatar('ali', './assets/images/dart11.jpeg'),
          _buildStoriesAvatar('ali', './assets/images/dart10.jpeg'),
          _buildStoriesAvatar('ali', './assets/images/dart13.jpeg'),
          _buildStoriesAvatar('ali', './assets/images/dart8.jpeg'),
          _buildStoriesAvatar('ali', './assets/images/dart9.jpeg'),
          _buildStoriesAvatar('ali', './assets/images/dart11.jpeg'),
          _buildStoriesAvatar('ali', './assets/images/dart11.jpeg'),
        ],
      ),
    );
  }

  _buildStoriesAvatar(
    String name,
    String image,
  ) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage(image),
            radius: 30,
          ),
        ),
        Text(name)
      ],
    );
  }
}
