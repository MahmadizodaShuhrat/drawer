import 'package:flutter/material.dart';

class Kanalho extends StatelessWidget {
  const Kanalho({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/chasm.png"),
            Text("Папка пуста"),
            Text("В этой папке пока нет чатов")
          ],
        ),
      ),
    );
  }
}