import 'package:flutter/material.dart';

class ScreenScrollView extends StatelessWidget {
  const ScreenScrollView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('ali'),
      ),
      body: Container(
        height: size.height - MediaQuery.of(context).padding.top,
        width: size.width,
        child: const CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Text("Ali Shah"),
            ),
            // SliverList(
            //     delegate: SliverChildBuilderDelegate((context, index) {
            //       return ListTile();
            //     }))
          ],
        ),
      ),
    );
  }
  // List <String> list = [""];
}
