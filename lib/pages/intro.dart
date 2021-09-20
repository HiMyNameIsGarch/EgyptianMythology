import 'package:flutter/material.dart';

class Intro extends StatefulWidget {
  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
            backgroundColor: Colors.blue[500],
            title: const Text('Intro screen'),
            centerTitle: true,
            elevation: 0
        ),
        body: Center(
            child: TextButton(
                onPressed: () {
                    Navigator.pushReplacementNamed(context, '/home');
                },
                child: const Text('Go Home')
            )
        ),
    );
  }
}


