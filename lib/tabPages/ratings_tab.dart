import 'package:flutter/material.dart';

class RantingsTabPage extends StatefulWidget {
  const RantingsTabPage({Key? key}) : super(key: key);

  @override
  State<RantingsTabPage> createState() => _RantingsTabPageState();
}

class _RantingsTabPageState extends State<RantingsTabPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Ratings"),
    );
  }
}
