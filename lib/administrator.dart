import 'package:flutter/material.dart';
import 'package:school_app/sidemenu.dart';

class Administration extends StatelessWidget {
  const Administration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        title: Text("Administration"),

      ),
          body: Container(
            child: Center(
              child: Text("Administrator"),
            ),
          )
     );
  }
}
