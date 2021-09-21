import 'package:flutter/material.dart';
import 'package:egyptianmythology/pages/details_page.dart';

class RaGod extends StatefulWidget {
  @override
  State<RaGod> createState() => _RaGodState();
}

class _RaGodState extends State<RaGod> {

  @override
  Widget build(BuildContext context) {
      return DetailsPage.create(context, "Ra", 
      'personificarea soarelui, cel mai puternic din toți zeii. Călătorea prin lumea subterană în fiecare noapte în nava sa, și era protejat de alti Zei. Se spune că atunci când Ra sfârșea călătoria subterană soarele răsărea din nou pe cer.',
      'ra', 'assets/gods/ra.png');
  }
}
