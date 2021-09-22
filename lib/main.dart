import 'package:flutter/material.dart';
import 'package:egyptianmythology/pages/home.dart';
import 'package:egyptianmythology/pages/intro.dart';
import 'package:egyptianmythology/pages/notsofast.dart';

void main() {
  var currentDate = DateTime.now();
  var releaseDate = DateTime(2021, 9, 27, 13, 35);
  late String firstRoute = '/loading';
  if(currentDate.compareTo(releaseDate).isNegative){
      firstRoute = '/notsofast';
  }   
  firstRoute = '/loading';
  runApp(MaterialApp(
    initialRoute: firstRoute,
    routes: {
        '/home': (context) => Home(),
        '/loading': (context) => Intro(),
        '/notsofast': (context) => NotSoFast(),
    }
  ));
}

