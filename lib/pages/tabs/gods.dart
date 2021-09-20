import 'package:flutter/material.dart';

class Gods extends StatefulWidget {
  @override
  State<Gods> createState() => _GodsState();
}

class _GodsState extends State<Gods> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
            backgroundColor: Colors.blue[500],
            title: const Text('Gods screen'),
            centerTitle: true,
            elevation: 0
        ),
        body: const Center(
            child: Text('Here will be the Gods')
        ),
    );
  }
}


