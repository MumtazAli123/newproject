import 'package:flutter/material.dart';
import 'package:newproject/post_screens/post_scrollview.dart';
import 'package:newproject/screens/signing_screen/signing.dart';
import 'package:newproject/search/search.dart';
import '../../home_page_screeens/home_page_screen.dart';
import '../../wallet_screen/wallet.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int _currentIndex = 0;
  List<Widget> body = const [
    MyHomePageScreen(),
    SearchBarScreen(),
    SliverAppbar(),
    WalletScreen(),
    SigningScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        widthFactor: 330,
        child: body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        elevation: 10,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        // selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blueGrey,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.post_add), label: 'Post'),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: 'Wallet'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Info'),
        ],
      ),
    );
  }
}
