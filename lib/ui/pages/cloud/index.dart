import 'package:flutter/material.dart';

class CloudPage extends StatefulWidget {
  CloudPage({Key key}) : super(key: key);

  _CloudPageState createState() => _CloudPageState();
}

class _CloudPageState extends State<CloudPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(16.0),
      child: Text("cloud"),
    );
  }
}
