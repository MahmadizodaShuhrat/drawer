import 'package:flutter/material.dart';
import 'package:post/drawer.dart';
void main(List<String> args) {
  runApp(MyWidget());
}
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,
      home:  MyDrawer(),
    );
  }
}