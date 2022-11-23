import 'package:flutter/material.dart';
import 'package:newproject/sideBar.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: const SideBarScreen(),
      backgroundColor: Colors.blue,
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: const Text('HomePage'),
      // leading: Image.asset('./assets/images/dart1.jpeg'),
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  _buildBody() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [Container()],
      ),
    );
  }
}
