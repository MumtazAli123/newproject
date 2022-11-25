import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: const Text('Wallet'),
      leading: IconButton(
        icon: const Icon(Icons.message),
        onPressed: () {},
      ),
      actions: const [Icon(Icons.notifications), Icon(Icons.search)],
      flexibleSpace: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('./assets/images/dart10.jpeg'),
          fit: BoxFit.cover,
        )),
      ),
    );
  }
}
