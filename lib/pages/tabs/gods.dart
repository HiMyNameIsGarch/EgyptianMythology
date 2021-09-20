import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:egyptianmythology/pages/tabs/gods/ra.dart';

class Gods extends StatefulWidget {
  @override
  State<Gods> createState() => _GodsState();
}

class _GodsState extends State<Gods> {

  final PageController ctrl = PageController(viewportFraction: 0.8);
  late String currentGod = 'god1';
  List<String> data = [
    "god1",
    "god2",
    "god3",
  ];

  @override
  void initState() {
      super.initState();
      ctrl.addListener(() {
          setState(() {
              int pageIdx = ctrl.page!.toInt();
              currentGod = data[pageIdx];
          });
      });
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Column(
            children: <Widget> [
                const SizedBox(height: 60,),
                Text(currentGod, style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold, 
                    fontSize: 35, letterSpacing: 3)),
                Expanded(
                    child: PageView.builder(
                        controller: ctrl,
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                            return Padding(
                                padding: const EdgeInsets.fromLTRB(10,60,10,100),
                                child: Card(color: Colors.grey,
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20)),
                                    child: Hero(
                                        tag: data[index],
                                        child: GestureDetector(
                                            onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => RaGod()));
                                            },
                                            child: Container(
                                                decoration: BoxDecoration(
                                                border: Border.all(color: Colors.yellow, width: 3),
                                                borderRadius:BorderRadius.circular(20),
                                                image: DecorationImage(fit: BoxFit.fill,
                                                    image: AssetImage('assets/gods/${data[index]}.png'))),
                                                ),
                                            ),
                                        ),
                                    ),
                                );
                            }
                    ),
                ),
            ]
        )
      );
  }
}


