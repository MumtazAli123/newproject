import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoryAvatarScreen extends StatelessWidget {
  const StoryAvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: GridView.extent(
        maxCrossAxisExtent: 100,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        children: [
          _build_Icons_AvatarList('Bus', Icons.directions_bus),
          _build_Icons_AvatarList('Ticket', Icons.airplane_ticket_outlined),
          _build_Icons_AvatarList('Hotel Booking', Icons.hotel),
          _build_Icons_AvatarList('Taxi', Icons.local_taxi),
          _build_Icons_AvatarList('Top Up', Icons.send_to_mobile),
          _build_Icons_AvatarList('Pharmacy', Icons.local_pharmacy),
          _build_Icons_AvatarList('Grocery', Icons.local_grocery_store),
          _build_Icons_AvatarList('Food', Icons.food_bank),
          // _buildAvatarList('', Icons.home),
        ],
      ),
    );
  }
}

_build_Icons_AvatarList(
  String name,
  IconData icon,
) {
  return Column(
    children: [
      Card(
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Icon(
            icon,
            size: 35,
            color: Colors.red,
          ),
        ),
      ),
      Text(
        name,
        style: const TextStyle(color: CupertinoColors.white),
      ),
    ],
  );
}

_buildAvatar() {
  return Column(
    children: [
      SizedBox(
        height: 150,
        child: ListView(
          semanticChildCount: 4,
          scrollDirection: Axis.horizontal,
          children: [
            _build_Icons_AvatarList('ali', CupertinoIcons.airplane),
            _build_Icons_AvatarList('subdir', Icons.home),
            _build_Icons_AvatarList('subdir', Icons.home),
            _build_Icons_AvatarList('subdir', Icons.home),
            _build_Icons_AvatarList('subdir', Icons.home),
          ],
        ),
      ),
    ],
  );
}
