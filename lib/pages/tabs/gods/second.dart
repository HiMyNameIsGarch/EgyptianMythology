import 'package:flutter/material.dart';
import 'package:egyptianmythology/pages/custom_dialog.dart';
import 'package:egyptianmythology/pages/details_page.dart';

class SecondGod extends StatefulWidget {
  @override
  State<SecondGod> createState() => _SecondGodState();
}

class _SecondGodState extends State<SecondGod> {
  final CustomDialog dialog = CustomDialog(title: 'Second\'s myth', description: 'lorem ipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumlorem iipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem psumlorem ipsumlorem iipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumlorempsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsum');

  @override
  Widget build(BuildContext context) {
      return DetailsPage.create(context, dialog, 'some shit text to test','god2', 'assets/gods/god2.png');
  }
}
