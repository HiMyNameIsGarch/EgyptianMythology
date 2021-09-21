import 'package:flutter/material.dart';
import 'package:egyptianmythology/pages/details_page.dart';

class SethGod extends StatefulWidget {
  @override
  State<SethGod> createState() => _SethGodState();
}

class _SethGodState extends State<SethGod> {

  @override
  Widget build(BuildContext context) {
      return DetailsPage.create(context, "Seth", 
        'stăpânul deșertului. El este singurul zeu care are un cap de animal. Egiptologii se refera la el ca la “Set bestia”. Inainte de caderea lui era considerat un mare razboinic. Cand zeul-soare Ra cobora de pe cer noaptea se lupta in adancuri cu sarpele-haos Apep, Set statea in fata barcii solare luptand cu sarpele si protejandu-l pe zeul-soare. Asadar, asta l-a facut patronul ideal al hiksosilor, invadatori straini razboinici ce au ocupat Egiptul o perioada.',
        'seth', 'assets/gods/seth.png');
  }
}
