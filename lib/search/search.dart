import 'package:flutter/material.dart';

class SearchBarScreen extends StatefulWidget {
  const SearchBarScreen({Key? key}) : super(key: key);

  @override
  State<SearchBarScreen> createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends State<SearchBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            floating: true,
            pinned: true,
            snap: true,
            stretch: false,
            centerTitle: true,
            title: Text('Search'),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Text('data'),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
            const SizedBox(
              height: 100,
            )
          ])),
        ],
      ),
    );
  }
}

_buildAppBar() {
  return AppBar(
    title: const Text('Search Bar'),
    actions: const [Icon(Icons.more_vert_outlined)],
  );
}

_buildBodyContainer() {
  return Container();
}
