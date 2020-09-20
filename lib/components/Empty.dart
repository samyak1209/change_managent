import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Empty extends StatefulWidget {
  final int x;
  Empty(this.x);
  @override
  _EmptyState createState() => _EmptyState();
}

class _EmptyState extends State<Empty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: new AppBar(
      title: Image.asset('images/tcslogo.png'),
    ),
    body: Center(
      child: Text('Article '+ widget.x.toString()),
    ),);
  }
}
