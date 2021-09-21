import 'package:flutter/material.dart';
import 'package:egyptianmythology/pages/details_page.dart';

class Creation extends StatefulWidget {
  @override
  State<Creation> createState() => _CreationState();
}

class _CreationState extends State<Creation> {

  @override
  Widget build(BuildContext context) {
      return DetailsPage.create(context, "Mitul Creatiei", 
      'Se spune că la începuturi exista doar o mare întunecată, trupul zeului Nu, acesta făcea parte dintr-un grup de opt zei primordiali, numit Ogdoad. Din adâncul apelor a ieșit la un moment dat un munte, iar în vârful lui a strălucit în întreaga lui splendoare Atum sau Ra, zeul soarelui, un alt membru al grupului Ogdoad și creatorul lumii. El scuipă și o creează pe Tefnut, zeița umidității, apoi tușește aducâdu-l pe lume pe zeul Shu , zeul aerului.  Shu și Tefnut devin amanți și în urma relației lor se nasc Geb, zeul pământului și Nut, zeița cerului.',
      'creation', 'assets/myths/creation.png');
  }
}
