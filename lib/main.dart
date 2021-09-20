import 'package:flutter/material.dart';
import 'package:egyptianmythology/pages/home.dart';
import 'package:egyptianmythology/pages/intro.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/loading',
    routes: {
        '/home': (context) => Home(),
        '/loading': (context) => Intro(),
    }
  ));
}

