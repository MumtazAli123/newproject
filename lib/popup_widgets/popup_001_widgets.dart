import 'package:flutter/material.dart';

ScreenPopUp001(
  BuildContext context,
  String title,
  String content,
  String name,
  String cancel,
  final void Function() okPressed,
  final void Function() cancelPressed,
) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('data'),
          content: Text(''),
          actions: [
            TextButton(onPressed: cancelPressed, child: Text(cancel)),
          ],
        );
      });
}

_build_Icons_AvatarList(
  IconData icon,
  String name,
  final void Function() onPressed,
  // void Function() onPressed,
) {
  return Column(
    children: [
      Card(
        elevation: 3,
        child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: IconButton(
              onPressed: onPressed,
              icon: Icon(
                icon,
                color: Colors.red,
                size: 35,
              ),
            )),
      ),
      Text(
        name,
        style: TextStyle(color: Colors.white),
      ),
    ],
  );
}
