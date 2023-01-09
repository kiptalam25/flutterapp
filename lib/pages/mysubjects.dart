import 'package:flutter/material.dart';

class MySubjects extends StatelessWidget {
  const MySubjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Subjects"),),
      body: Center(
        child: Text("My Subjects"),
      ),
    );
  }
}
