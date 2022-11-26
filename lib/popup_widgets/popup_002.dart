import 'package:flutter/material.dart';

ScreenPopUp002(
  BuildContext context,
  String title,
  String content,
  IconData icon,
  String name,
  String cancel,
  final void Function() okPressed,
  final void Function() cancelPressed,
) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          icon: Icon(
            icon,
            size: 30,
            color: Colors.red,
          ),
          actions: [
            ElevatedButton(onPressed: okPressed, child: Text(name)),
            TextButton(onPressed: cancelPressed, child: Text(cancel)),
          ],
        );
      });
}
