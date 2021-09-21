import 'package:flutter/material.dart';
import 'package:egyptianmythology/pages/details_page.dart';

class Sfinx extends StatefulWidget {
  @override
  State<Sfinx> createState() => _SfinxState();
}

class _SfinxState extends State<Sfinx> {

  @override
  Widget build(BuildContext context) {
      return DetailsPage.create(context, "Sfinxul", 
      'este o figură mitologică zoomorfă înfățișată ca un leu culcat cu cap uman. Își are originile în sculpturile din Vechiul Regat Egiptean pe care l-au preluat și grecii.',
      'sfinx', 'assets/creatures/sfinx.png');
  }
}

