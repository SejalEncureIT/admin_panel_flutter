import 'package:flutter/material.dart';

class Books1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AppBar(
          title: Text("Books 1"),
        ),
        TextButton(
          child: Text("Go to books 2"),
          onPressed: () => Navigator.pushNamed(context, '/books2'),
        ),
      ],
    );
  }
}