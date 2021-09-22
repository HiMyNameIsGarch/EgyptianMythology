import 'package:flutter/material.dart';
import 'package:egyptianmythology/resources/colors.dart';

class NotSoFast extends StatefulWidget {
  @override
  State<NotSoFast> createState() => _NotSoFastState();
}

class _NotSoFastState extends State<NotSoFast> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
          backgroundColor: CColors.mainbg,
          body: Center(
              child: Text('Graba Strica Treaba!', 
                    style: TextStyle(fontWeight: FontWeight.bold, 
                        fontSize: 28 ,color: CColors.lace))
          ),
      );
  }
}



