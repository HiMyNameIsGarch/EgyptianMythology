import 'package:flutter/material.dart';
import 'package:egyptianmythology/pages/details_page.dart';

class IsisGod extends StatefulWidget {
  @override
  State<IsisGod> createState() => _IsisGodState();
}

class _IsisGodState extends State<IsisGod> {

  @override
  Widget build(BuildContext context) {
      return DetailsPage.create(context, "Isis", 
      'zeița magiei și a vieții, a căsătoriei, simbolul armoniei matrimoniale. In ipostaza inițială de regină deificată, cel mai important rol a lui Isis a fost la început protecția faraonului decedat. De aceea a ajuns să fie asociată cu ceremonialul funerar, numele ei fiind scris de peste 80 de ori în textele piramidelor.',
      'isis', 'assets/gods/isis.png');
  }
}
