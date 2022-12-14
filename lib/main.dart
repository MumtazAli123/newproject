import 'package:flutter/material.dart';
import 'package:newproject/screens/bottom_bar/bottomBar_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      color: Colors.red,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BottomBarScreen(),
    );
  }
}
