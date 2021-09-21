import 'package:flutter/material.dart';
import 'package:egyptianmythology/pages/details_page.dart';

class Apophis extends StatefulWidget {
  @override
  State<Apophis> createState() => _ApophisState();
}

class _ApophisState extends State<Apophis> {

  @override
  Widget build(BuildContext context) {
      return DetailsPage.create(context, "Apophis", 
      '(cunoscut și ca Apep sau Distrugătorul) era spiritul antic al răului și distrugerii, zeul demon-șarpe în mitologia egipteană, care locuia în întunericul etern. Zilnic, aștepta să distrugă Barca Solară a lui Ra care plutea deasupra cerurilor. Rolul primordial al lui Ra era să-l învingă pe Apophis și să-l oprească de la distrugerea bărcii. Uneori, Apophis reușea să învingă, iar lumea se cufunda în întuneric (eclipsă solară). Dar Ra și însoțitorul său, Mehen, despicau pântecele lui Apophis permițând Bărcii Solare să scape.',
      'apophis', 'assets/creatures/apophis.png');
  }
}

