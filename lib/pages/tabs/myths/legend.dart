import 'package:flutter/material.dart';
import 'package:egyptianmythology/pages/details_page.dart';

class Legend extends StatefulWidget {
  @override
  State<Legend> createState() => _LegendState();
}

class _LegendState extends State<Legend> {

  @override
  Widget build(BuildContext context) {
      return DetailsPage.create(context, "Legenda originii calendarului egiptean",
      'Lui Ra nu i-a plăcut ideea ca Nut și Geb s-ar putea căsători, chiar dacă era ceva permis atunci, și i-a ordonat lui Shu să-i separe. Astfel între cer și pământ a intrat aerul. Nut își păstrează poziția arcuită deasupra lui Geb, însă în timpul nopții ea se apleacă puțin asupra fratelui ei astfel încât să se poată atinge unul pe celălalt. Atum nu observă acest lucru. Astfel, Nut rămâne însărcinată cu cinci copii.Aflând despre acestea, Atum îi poruncește lui Nut să nu nască., Thot, zeul înțelepciunii si al Lunii, stia ca Ra are control asupra a 360 de zile. El a jucat senet cu Luna, miza jocului era timpul. Thot a castigat partida si a primit 5 zile in stapanire. Aceste zile au fost create de Thot și nu de Atum, deci puteau fi folosite așa cum voia zeul inteligenței. Nut poate să nască fără să încalce porunca lui Atum.În prima zi ea l-a născut pe Osiris, moștenitorul tatălui său, Geb. Osiris a devenit primul faraon. În a doua zi, s-a născut Horus cel Bătrân, zeul cu cap de șoim, divinitatea războiului. În a treia zi, zeul Seth, zeu al fulgerelor, al deșerturilor și al răzbunărilor. În a patra zi, pe Isis, protectoarea culturii, a căminului, a nașterii. În a cincea zi, este adusă pe lume zeița Nephtys, una din protectoarele morților.',
      'legend', 'assets/myths/legend.png');
  }
}

