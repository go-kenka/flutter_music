import 'package:flutter/material.dart';

class MovePage extends StatefulWidget {
  MovePage({Key key}) : super(key: key);

  _MovePageState createState() => _MovePageState();
}

class _MovePageState extends State<MovePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(16.0),
      child: Text('move'),
    );
  }
}
