import 'package:flutter/material.dart';
import 'package:egyptianmythology/pages/custom_dialog.dart';
import 'dart:ui';

class DetailsPage {
  static Widget create(BuildContext context, CustomDialog dialog, 
    String bottomText, String heroTag, String imagePath) {
    var bottomContentText = Text( bottomText,
      style: const TextStyle(fontSize: 16.0),
    );
    final readButton = Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          onPressed: () => {
            showDialog(
                context: context,
                builder: (context) => dialog )
          },
          child: const Text("I WANNA READ THE MYTH",
              style: TextStyle(color: Colors.white)),
        ));
    final bottomContent = Container(
      height: MediaQuery.of(context).size.height * 0.55,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Center(
        child: SingleChildScrollView(
            child: Column(
          children: <Widget>[bottomContentText, readButton],
        )),
      ),
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
            child: const Icon(Icons.arrow_back, color: Colors.white),
          ),
        )
      ],
    );

    return Scaffold(
      body: Column(children: <Widget>[topContent, bottomContent]),
    );
  }
}
