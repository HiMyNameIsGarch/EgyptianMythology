import 'package:flutter/material.dart';
import 'package:egyptianmythology/pages/details_page.dart';

class First extends StatefulWidget {
  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {

  @override
  Widget build(BuildContext context) {
      return DetailsPage.create(context, "Zeul Nu", 
      'Se spune că la începuturi exista doar o mare întunecată, trupul zeului Nu. Nu făcea parte dintr-un grup de opt zei primordiali, numit Ogdoad. Din adâncul apelor a ieșit la un moment dat un munte, iar în vârful lui a strălucit în întreaga lui splendoare Atum, zeul soarelui, un alt membru al grupului Ogdoad și creatorul lumii. El scuipă și o creează pe Tefnut, zeița umidității, apoi tușește aducîndu-l pe lume pe zeul Shu , zeul aerului (Herodot spune că cei doi s-au născut din sperma zeului).  ',
      'first', 'assets/world/first.png');
  }
}

