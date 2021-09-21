import 'package:flutter/material.dart';
import 'package:egyptianmythology/pages/details_page.dart';

class AnubisGod extends StatefulWidget {
  @override
  State<AnubisGod> createState() => _AnubisGodState();
}

class _AnubisGodState extends State<AnubisGod> {

  @override
  Widget build(BuildContext context) {
      return DetailsPage.create(context, "Anubis", 
      'Zeul Ținutului Sfânt, zeul ce ghida spiritele morților în lumea de dincolo si al mumificarii.Anubis va fi in ziua judecatii oponentul lui Ammit, monstrul-hibrid hipopotam-leu-crocodil. Cel care iti manca inima daca nu erai vrednic. Ceremonia se desfasura chiar inainte de a intra in Duat, lumea mortilor. Daca balanta se inclina in favoarea penei zeitei Ma’at, zeita adevarului, puteai ajunge in lumea cealalta.',
      'anubis', 'assets/gods/anubis.png');
  }
}
