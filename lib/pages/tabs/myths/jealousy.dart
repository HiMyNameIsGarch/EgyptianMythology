import 'package:flutter/material.dart';
import 'package:egyptianmythology/pages/details_page.dart';

class Jealousy extends StatefulWidget {
  @override
  State<Jealousy> createState() => _JealousyState();
}

class _JealousyState extends State<Jealousy> {

  @override
  Widget build(BuildContext context) {
      return DetailsPage.create(context, 'Gelozia lui Seth',
      'Dintre cei cinci copii, patru se căsătoresc: Isis se căsătorește cu Osiris, iar Seth cu Nephthys.Într-o zi însă, Osiris o confundă pe Isis cu sora ei, Nephthys  și o lasă însărcinată. În urma acestei confuzii se naște zeul Anubis, cel cu cap de șacal. Afland de aceasta relatie dintre Osiris si Nephthys, Seth pune la cale un plan pentru a se razbuna.În timpul unui banchet la care se adunaseră toți zeii, Seth arată un cufăr de lemn parfumat, încrustat, pictat și anunță că îl va oferi celui care va atinge exact marginile cu capul și cu picioarele. Toți zeii acceptă să încerce. Singurul care a încăput exact în cufăr era chiar Osiris, Seth l-a acoperit repede cu capacul si a bătut cuie în cufăr, ca să nu poată fi deschis si l au aruncat in fluviu.  Isis și Nephtys pleacă în căutarea lui Osiris. Îl găsesc pe malul orașului Tyr. Acolo îl mumifică și îl ascund in delta Nilului.Regele Seth, venit la vânătoare în delta Nilului, găsește trupul lui Osiris, pe care îl taie în bucăți și îl aruncă în Nil.Isis și Nephtys încep să il jelească pe Osiris și lacrimile lor fac fluviul să se reverse.Cele două zeițe îl cheamă pe Anubis, zeul mumificării, cu cap de șacal. Toți trei contribuie la refacerea și mumificarea lui Osiris. Apoi Isis îi dă viață soțului ei și concep un fiu: Horus.',
      'jealousy', 'assets/myths/jealousy.png');
  }
}

