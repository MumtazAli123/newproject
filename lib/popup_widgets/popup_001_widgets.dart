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
          title: Text(title),
          content: Text(content),
          actions: [
            ElevatedButton(onPressed: okPressed, child: Text(name)),
            TextButton(onPressed: cancelPressed, child: Text(cancel)),
          ],
        );
      });
}
