import 'package:flutter/material.dart';
import 'package:egyptianmythology/pages/tabs/gods/ra.dart';
import 'package:egyptianmythology/pages/tabs/gods/second.dart';
import 'package:egyptianmythology/pages/card_lists.dart';

class Gods extends StatefulWidget {
  @override
  State<Gods> createState() => _GodsState();
}

class _GodsState extends State<Gods> {

  final PageController ctrl = PageController(viewportFraction: 0.8);
  List<String> data = [
    "god1",
    "god2",
    "god3",
  ];

  @override
  void initState() {
      super.initState();
      ctrl.addListener(() {
          setState(() {
              int pageIdx = ctrl.page!.toInt();
          });
      });
  }

  @override
  Widget build(BuildContext context) {
      return CardLists.getListOf(data, false,'assets/gods', (idx) {
              switch(idx){
                  case 0: {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RaGod()));
                  } break;
                  case 1: {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SecondGod()));
                  } break;
                  case 2: {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RaGod()));
                  } break;
              }
          }, ctrl);
  }
}


