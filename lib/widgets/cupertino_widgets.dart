import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newproject/home_page_screeens/icons_avatar_post.dart';
import 'package:newproject/screens/login_page/login.dart';

class ScreenCupertinoWidgets extends StatefulWidget {
  const ScreenCupertinoWidgets({Key? key}) : super(key: key);

  @override
  State<ScreenCupertinoWidgets> createState() => _CupertinoWidgetsState();
}

class _CupertinoWidgetsState extends State<ScreenCupertinoWidgets> {
  // String get name => name;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
      child: CupertinoButton(
        child: Text('Data'),
        onPressed: () {
          showCupertinoModalPopup(
            context: context,
            builder: (BuildContext context) => CupertinoActionSheet(
              title: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ));
                },
                child: Text('data'),
              ),
              message: const Text('data'),
              actions: [
                CupertinoActionSheetAction(
                  child: const Text('do some thing'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          );
        },
      ),
    ));
  }

  _buildIconAvatar() {
    return;
  }
}

// String get icon => icon;
// String get name => name;
// get onPressed => onPressed;
