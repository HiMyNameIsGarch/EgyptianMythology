import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Intro extends StatefulWidget {
  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
        onDone: () {
            Navigator.pushReplacementNamed(context, '/home');
        },
        isProgress: false,
        done: const Text('done'),
        next: const Text('next'),
        pages: [
           PageViewModel( title: 'First', body: 'This is the body',), 
           PageViewModel( title: 'Second', body: 'This is the body',), 
           PageViewModel( title: 'Third', body: 'This is the body',), 
        ],
    );
  }
}


