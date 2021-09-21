import 'package:flutter/material.dart';
import 'package:egyptianmythology/pages/details_page.dart';

class Third extends StatefulWidget {
  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {

  @override
  Widget build(BuildContext context) {
      return DetailsPage.create(context, "Separarea", 
      'De aceea, de acum încolo cerul va fi separat de pământ de aer. În multe reprezentări egiptene însă, Nut continuă să fie legată de Geb prin privirea ei și prin vârful mâinilor și al picioarelor cu care unește estul de vest.  ',
      'third', 'assets/world/third.png');
  }
}



