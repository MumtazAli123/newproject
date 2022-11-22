import 'package:flutter/material.dart';
import 'package:newproject/screens/login_page/login.dart';
import 'package:newproject/screens/signing_screen/signing.dart';

class SideBarScreen extends StatelessWidget {
  const SideBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Ali Dubai'),
            accountEmail: const Text('ali@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('./assets/images/Sir.jpeg'),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.login),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SigningScreen()));
            },
            title: const Text('Signing'),
            subtitle: const Text('Number'),
          ),
          ListTile(
            leading: const Icon(Icons.email_rounded),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()));
            },
            title: const Text('Logging'),
          ),
          ListTile(
            leading: const Icon(Icons.call),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SigningScreen()));
            },
            title: const Text('Phone'),
            subtitle: const Text('030093***26'),
          ),
        ],
      ),
    );
  }
}
