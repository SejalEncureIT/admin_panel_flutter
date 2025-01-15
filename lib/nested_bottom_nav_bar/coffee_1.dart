import 'package:flutter/material.dart';

class Coffee1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AppBar(
          title: Text("Coffee 1"),
        ),
        TextButton(
          child: Text("Go to coffee 2"),
          onPressed: () => Navigator.pushNamed(context, '/coffee2'),
        ),
      ],
    );
  }
}