import 'package:flutter/material.dart';
import 'package:egyptianmythology/pages/custom_dialog.dart';
import 'package:egyptianmythology/pages/details_page.dart';

class RaGod extends StatefulWidget {
  @override
  State<RaGod> createState() => _RaGodState();
}

class _RaGodState extends State<RaGod> {
  final CustomDialog dialog = CustomDialog(title: 'Ra\'s myth', description: 'lorem ipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumlorem iipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem psumlorem ipsumlorem iipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumlorempsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsum');

  @override
  Widget build(BuildContext context) {
      return DetailsPage.create(context, dialog, 'some shit text to test','god1', 'assets/gods/god1.png');
  }
}
