import 'package:flutter/material.dart';
import 'package:egyptianmythology/pages/details_page.dart';

class OsirisGod extends StatefulWidget {
  @override
  State<OsirisGod> createState() => _OsirisGodState();
}

class _OsirisGodState extends State<OsirisGod> {

  @override
  Widget build(BuildContext context) {
      return DetailsPage.create(context, "Osiris", 
      'zeul vieții de apoi, al lumii de dincolo și al morților. Este descris ca un faraon traditional cu pene de strut, acea barbie superpronuntata si elementele definitorii, dar pielea sa este mereu verde si apare infasat in bandaje de mumie la picioare. El s-a casatorit cu sora sa, Isis si impreuna au condus Egiptul pre-dinastic.',
      'osiris', 'assets/gods/osiris.png');
  }
}
