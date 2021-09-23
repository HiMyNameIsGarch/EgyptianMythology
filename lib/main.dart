import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:egyptianmythology/pages/home.dart';
import 'package:egyptianmythology/pages/intro.dart';
import 'package:egyptianmythology/pages/notsofast.dart';
import 'package:egyptianmythology/resources/colors.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: CColors.mainbg, // Navigation bar color
    systemNavigationBarDividerColor: CColors.mainbg, //Navigation bar divider color
  ));

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

