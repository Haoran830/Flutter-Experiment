import 'package:flutter/material.dart';

import 'logo_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  build(BuildContext content) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Logo List'),
          ),
          body: LogoManager(startingLogo: "Doogle",)
      ),
    );
  }
}
