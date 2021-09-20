import 'package:flutter/material.dart';

class Creatures extends StatefulWidget {
  @override
  State<Creatures> createState() => _CreaturesState();
}

class _CreaturesState extends State<Creatures> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
            backgroundColor: Colors.blue[500],
            title: const Text('Creatures screen'),
            centerTitle: true,
            elevation: 0
        ),
        body: const Center(
            child: Text('Here will be the Creatures')
        ),
    );
  }
}


