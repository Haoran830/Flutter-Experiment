import 'package:flutter/material.dart';

import 'logos.dart';

class LogoManager extends StatefulWidget {
  final String startingLogo;

  LogoManager({this.startingLogo = "Default"});

  @override
  State<StatefulWidget> createState() {
    return _LogoManagerState();
  }
}

class _LogoManagerState extends State<LogoManager> {
  List<String> _logos = [];

  @override
  void initState() {
    super.initState();
    _logos.add(widget.startingLogo);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            child: Text('Add logo'),
            onPressed: () {
              setState(() {
                _logos.add('New Google');
              });
            },
          ),
        ),
        Logos(_logos)
      ],
    );
  }
}
