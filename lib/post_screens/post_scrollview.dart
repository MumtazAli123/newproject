import 'package:flutter/material.dart';

class SliverAppbar extends StatelessWidget {
  const SliverAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                elevation: 5,
                expandedHeight: 200,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: const Text('My App'),
                  background: Image.asset(
                    './assets/images/dart11.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ];
          },
          body: const Center(
            child: Text('data'),
          ),
        ));
  }
  // List <String> list = [""];
}
