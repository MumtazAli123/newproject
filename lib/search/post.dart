import 'package:flutter/material.dart';
import 'package:newproject/widgets/input_widgets.dart';

class SearchBarScreen extends StatefulWidget {
  const SearchBarScreen({Key? key}) : super(key: key);

  @override
  State<SearchBarScreen> createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends State<SearchBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }
}

_buildAppBar() {
  return AppBar(
    title: InkWell(
      onTap: () {},
      child: TextFormField(
        decoration: UIConfig().inputDecoration(
            'Search', 'Search', Icons.search, Icons.send, () {}),
      ),
    ),
  );
}

_buildBody() {
  return Container();
}
