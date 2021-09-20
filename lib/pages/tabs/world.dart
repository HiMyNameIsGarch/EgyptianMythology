import 'package:flutter/material.dart';

class World extends StatefulWidget {
  @override
  State<World> createState() => _WorldState();
}

class _WorldState extends State<World> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
            backgroundColor: Colors.blue[500],
            title: const Text('World screen'),
            centerTitle: true,
            elevation: 0
        ),
        body: const Center(
            child: Text('Here will be the World')
        ),
    );
  }
}


