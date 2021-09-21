import 'package:flutter/material.dart';
import 'package:egyptianmythology/pages/details_page.dart';

class BastetGod extends StatefulWidget {
  @override
  State<BastetGod> createState() => _BastetGodState();
}

class _BastetGodState extends State<BastetGod> {

  @override
  Widget build(BuildContext context) {
      return DetailsPage.create(context, "Bastet", 
      'zeița lunii și a felinelor ,este reprezentata ca o femeie cu cap de pisică.  Pisicile erau venerate in Egiptul antic ca protectoare impotriva bolilor desertului. Asadar, ocupau un rol foarte important si special in lumea egipteana.',
      'bastet', 'assets/gods/bastet.png');
  }
}
