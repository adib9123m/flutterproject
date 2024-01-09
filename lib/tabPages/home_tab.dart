import 'package:flutter/material.dart';

class HomeTapPage extends StatefulWidget {
  const HomeTapPage({Key? key}) : super(key: key);

  @override
  State<HomeTapPage> createState() => _HomeTapPageState();
}

class _HomeTapPageState extends State<HomeTapPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Home"),
    );
  }
}
