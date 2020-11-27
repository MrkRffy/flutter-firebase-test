import 'package:flutter/material.dart';

class WeightList extends StatefulWidget {
  WeightList({Key key}) : super(key: key);

  @override
  _WeightListState createState() => _WeightListState();
}

class _WeightListState extends State<WeightList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weight Tracker'),
      ),
      body: Center(
        child: Text("HELLO"),
      ),
    );
  }
}
