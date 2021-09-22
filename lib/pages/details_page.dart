import 'package:flutter/material.dart';
import 'package:egyptianmythology/resources/colors.dart';
import 'dart:ui';

class DetailsPage {
  static Widget create(BuildContext context , String title, String bottomText, 
                        String heroTag, String imagePath) {

    var bottomContentText = Text(bottomText,
      textAlign: TextAlign.start,
      style: TextStyle(color: CColors.secondbg, fontSize: 16.0, wordSpacing: 2, 
      letterSpacing: 1, fontFamily: 'Egypt'),
    );

    final bottomContent = Container(
      height: MediaQuery.of(context).size.height * 0.55,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 10, top: 10),
            child: Center(child: 
            Text(title, textAlign: TextAlign.center, style: TextStyle(
                fontSize: 32, fontWeight: FontWeight.w700, letterSpacing: 5, 
                color: CColors.gold, fontFamily: 'Obelisk'))),
          ),
            bottomContentText],
        )),
    );

    final topContent = Stack(
      children: <Widget>[
        Hero(tag: heroTag,
          child: Container(
            padding: const EdgeInsets.only(left: 10.0),
            height: MediaQuery.of(context).size.height * 0.45,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(0), bottom: Radius.circular(40)),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(left: 8.0, top: 40.0,
          child: InkWell(
            onTap: () { Navigator.pop(context); },
            child: Icon(Icons.arrow_back, color: CColors.brown),
          ),
        ),
      ],
    );

    return Scaffold(
      backgroundColor: CColors.mainbg,
      body: Column(children: <Widget>[topContent, bottomContent]),
    );
  }
}
