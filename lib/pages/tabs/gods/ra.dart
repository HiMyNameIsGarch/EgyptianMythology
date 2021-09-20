import 'package:flutter/material.dart';

class RaGod extends StatefulWidget {
  @override
  State<RaGod> createState() => _RaGodState();
}

class _RaGodState extends State<RaGod> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
            backgroundColor: Colors.blue[500],
            title: const Text('RaGod screen'),
            centerTitle: true,
            elevation: 0
        ),
        body: Center(
            child: Hero(
                tag: 'god1',
                child: Container(
                    alignment: Alignment.topRight,
                    width: 200,
                    height: 300,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.yellow, width: 3),
                        borderRadius:BorderRadius.circular(20),
                        image: const DecorationImage(fit: BoxFit.fill,
                            image: AssetImage('assets/gods/god1.png'))),
                    ),
            ),
        ),
    );
  }
}


