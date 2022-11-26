import 'package:flutter/material.dart';

class PostListAvatar extends StatelessWidget {
  const PostListAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [_buildPostAvatar()],
      ),
    );
  }

  _buildPostAvatar() {
    return Card(
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    CircleAvatar(
                      backgroundImage:
                          AssetImage('./assets/images/dart11.jpeg'),
                    ),
                    SizedBox(
                      width: 11,
                    ),
                    Text('Zubair'),
                  ],
                ),
              ),
              const Spacer(),
              const Icon(Icons.more_horiz_outlined)
            ],
          ),
          Image.asset(
            './assets/images/dart11.jpeg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 270,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Icon(Icons.favorite_border),
                SizedBox(
                  width: 11,
                ),
                Icon(Icons.chat_bubble_outline),
                SizedBox(
                  width: 11,
                ),
                Icon(Icons.send),
                Spacer(),
                Icon(Icons.bookmark_outline),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text('Likes 190'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
