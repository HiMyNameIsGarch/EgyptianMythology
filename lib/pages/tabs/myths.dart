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

  List<String> data = [ "creation", "jealousy", "legend", ];

  @override
  Widget build(BuildContext context) {
      return CardLists.getListOf(data,'assets/myths', "Mituri", (idx) {
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
          });
  }
}


