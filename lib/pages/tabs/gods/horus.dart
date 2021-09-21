import 'package:flutter/material.dart';
import 'package:egyptianmythology/pages/details_page.dart';

class HorusGod extends StatefulWidget {
  @override
  State<HorusGod> createState() => _HorusGodState();
}

class _HorusGodState extends State<HorusGod> {

  @override
  Widget build(BuildContext context) {
      return DetailsPage.create(context, "Horus", 
      'zeu protector al Egiptului, este reprezentat cu cap de șoim.Ca si conducator, Horus serveste ca vanator, zeu-razboinic si zeu al cerului. Cel mai important element al sau ramane Ochiul lui Horus folosit in talismane si inscriptii pentru a alunga raul. Acest simbol a devenit foarte popular in antichitate si poate fi gasit si astazi.',
      'horus', 'assets/gods/horus.png');
  }
}
