import 'package:flutter/material.dart';
import 'package:egyptianmythology/pages/card_lists.dart';
import 'package:egyptianmythology/pages/tabs/myths/creation.dart';
import 'package:egyptianmythology/pages/tabs/myths/jealousy.dart';
import 'package:egyptianmythology/pages/tabs/myths/legend.dart';

class Myths extends StatefulWidget {
  @override
  State<Myths> createState() => _MythsState();
}

class _MythsState extends State<Myths> {

  final PageController ctrl = PageController(viewportFraction: 0.8);
  List<String> data = [ "creation", "jealousy", "legend", ];

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
      return CardLists.getListOf(data, false,'assets/myths', "Mituri", (idx) {
              switch(idx){
                  case 0: {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Creation()));
                  } break;
                  case 1: {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Jealousy()));
                  } break;
                  case 2: {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Legend()));
                  } break;
              }
          }, ctrl);
  }
}


