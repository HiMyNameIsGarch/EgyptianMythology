import 'package:flutter/material.dart';
import 'package:egyptianmythology/pages/tabs/creatures/apophis.dart';
import 'package:egyptianmythology/pages/tabs/creatures/sfinx.dart';
import 'package:egyptianmythology/pages/card_lists.dart';

class Creatures extends StatefulWidget {
  @override
  State<Creatures> createState() => _CreaturesState();
}

class _CreaturesState extends State<Creatures> {
  final PageController ctrl = PageController(viewportFraction: 0.8);

  List<String> data = [ "apophis", "sfinx" ];

  @override
  Widget build(BuildContext context) {
      return CardLists.getListOf(data, true, 'assets/creatures', "Creaturi", (idx) {
              if(idx == 0){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Apophis()));
              } else if(idx == 1){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Sfinx()));
              }
          }, ctrl);
    }
}


