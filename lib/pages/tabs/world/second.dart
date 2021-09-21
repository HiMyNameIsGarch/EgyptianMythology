import 'package:flutter/material.dart';
import 'package:egyptianmythology/pages/details_page.dart';

class Second extends StatefulWidget {
  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {

  @override
  Widget build(BuildContext context) {
      return DetailsPage.create(context, "Grupul Ogdoad", 
      'Shu este văzut de obicei ca un om, deși unii îi atribuie înfățișare de leu. Tefnut are corp de om și cap de leoaică, sau este în întegime leoaică. Shu și Tefnut devin amanți și în urma relației lor se nasc Geb, zeul pământului și Nut, zeița cerului. Geb se așază pe sol, iar Nut se arcuiește deasupra lui, împingându-l la o parte pe bunicul lor, Nu. Apoi, Atum creează toate celelalte forțe ale universului și îi poruncește lui Shu, să îi separe pe Geb și Nut, așezându-se între ei.',
      'second', 'assets/world/second.png');
  }
}

