import 'package:flutter/material.dart';
import 'package:egyptianmythology/pages/tabs/gods/ra.dart';
import 'package:egyptianmythology/pages/card_lists.dart';

class Creatures extends StatefulWidget {
  @override
  State<Creatures> createState() => _CreaturesState();
}

class _CreaturesState extends State<Creatures> {
  final PageController ctrl = PageController(viewportFraction: 0.8);

  List<String> data = [ "god1", "god2", "god3", ];

  @override
  Widget build(BuildContext context) {
      return CardLists.getListOf(data, true, 'assets/gods', (idx) {
              Navigator.push(context, MaterialPageRoute(builder: (context) => RaGod()));
          }, ctrl);
  }
}


