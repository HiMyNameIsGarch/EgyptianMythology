import 'package:flutter/material.dart';
import 'dart:ui';

class RaGod extends StatefulWidget {
  @override
  State<RaGod> createState() => _RaGodState();
}

class _RaGodState extends State<RaGod> {
  @override
  Widget build(BuildContext context) {
    var bottomContentText = const Text(
      'lorem ipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumlorem iipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem psumlorem ipsumlorem iipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumlorempsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsum',
      style: TextStyle(fontSize: 16.0),
    );
    final readButton = Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          onPressed: () => {},
          child: const Text("I WANNA READ THE MYTH",
              style: TextStyle(color: Colors.white)),
        ));
    final bottomContent = Container(
      height: MediaQuery.of(context).size.height * 0.55,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.fromLTRB(20,10,20,10),
      child: Center(
        child: SingleChildScrollView(child: Column(
          children: <Widget>[bottomContentText, readButton],
        )),
      ),
    );
    final topContent = Stack(
      children: <Widget>[
        Hero(tag: 'god1',
          child: Container(
            padding: const EdgeInsets.only(left: 10.0),
            height: MediaQuery.of(context).size.height * 0.45,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(
                  top: Radius.circular(0), bottom: Radius.circular(40)),
              image: DecorationImage(
                image: AssetImage("assets/gods/god1.png"),
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
      body: Column(
        children: <Widget>[topContent, bottomContent],
      ),
    );
  }
}
