import 'package:flutter/material.dart';

class MySavedPage extends StatefulWidget {
  const MySavedPage({Key? key}) : super(key: key);

  @override
  State<MySavedPage> createState() => _MySavedPageState();
}

class _MySavedPageState extends State<MySavedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(child: Text('My Saved')),
    );
  }
}
