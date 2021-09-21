import 'package:flutter/material.dart';
import 'package:egyptianmythology/pages/card_lists.dart';
import 'package:egyptianmythology/pages/tabs/world/first.dart';
import 'package:egyptianmythology/pages/tabs/world/second.dart';
import 'package:egyptianmythology/pages/tabs/world/third.dart';

class World extends StatefulWidget {
  @override
  State<World> createState() => _WorldState();
}

class _WorldState extends State<World> {
  final PageController ctrl = PageController(viewportFraction: 0.8);

  List<String> data = ["first", "second", "third"];

  @override
  Widget build(BuildContext context) {
    return CardLists.getListOf(data, false, 'assets/world', 'Crearea Lumii', (idx) {
            switch(idx){
                case 0: {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => First()));
                } break;
                case 1: {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Second()));
                } break;
                case 2: {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Third()));
                } break;
            }
        }, ctrl);
    }
}


