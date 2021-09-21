import 'package:flutter/material.dart';
import 'package:egyptianmythology/pages/card_lists.dart';
import 'package:egyptianmythology/pages/tabs/gods/ra.dart';
import 'package:egyptianmythology/pages/tabs/gods/anubis.dart';
import 'package:egyptianmythology/pages/tabs/gods/bastet.dart';
import 'package:egyptianmythology/pages/tabs/gods/horus.dart';
import 'package:egyptianmythology/pages/tabs/gods/isis.dart';
import 'package:egyptianmythology/pages/tabs/gods/osiris.dart';
import 'package:egyptianmythology/pages/tabs/gods/seth.dart';

class Gods extends StatefulWidget {
  @override
  State<Gods> createState() => _GodsState();
}

class _GodsState extends State<Gods> {

  final PageController ctrl = PageController(viewportFraction: 0.8);
  List<String> data = [ "ra", "anubis", "bastet","horus","isis","osiris","seth" ];

  @override
  Widget build(BuildContext context) {
      return CardLists.getListOf(data, false,'assets/gods', "Zei", (idx) {
              switch(idx){
                  case 0: {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RaGod()));
                  } break;
                  case 1: {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AnubisGod()));
                  } break;
                  case 2: {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => BastetGod()));
                  } break;
                  case 3: {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HorusGod()));
                  } break;
                  case 4: {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => IsisGod()));
                  } break;
                  case 5: {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => OsirisGod()));
                  } break;
                  case 6: {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SethGod()));
                  } break;
              }
          }, ctrl);
  }
}


