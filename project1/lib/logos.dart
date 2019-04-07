import 'package:flutter/material.dart';

class Logos extends StatelessWidget {
  final List<String> logos;

  Logos(this.logos);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: logos.map(
            (title) =>
            Card(
              child: Column(
                children: <Widget>[
                  Image.asset('assets/logo_google.png'),
                  Text(title)
                ],
              ),
            ),
      ).toList(),
    );
  }
}