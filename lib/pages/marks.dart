import 'package:flutter/material.dart';

class Marks extends StatelessWidget {
  const Marks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Marks"),),
      body: Center(
        child: Text("Marks"),
      ),
    );
  }
}
