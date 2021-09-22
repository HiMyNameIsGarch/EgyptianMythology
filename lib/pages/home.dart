import 'package:flutter/material.dart';
//import 'package:flutter/services.dart'; use to disable status/bottom bar
import 'package:flutter_svg/flutter_svg.dart';
import 'package:egyptianmythology/pages/tabs/gods.dart';
import 'package:egyptianmythology/pages/tabs/myths.dart';
import 'package:egyptianmythology/pages/tabs/creatures.dart';
import 'package:egyptianmythology/pages/tabs/world.dart';
import 'package:egyptianmythology/resources/colors.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int selectedIndex = 1; // Start in middle
  final List<Widget> _selectedPage = [Gods(), Creatures(), Myths(), World() ];
  SvgPicture getIcon(String name){
      return SvgPicture.asset('assets/icons/$name.svg', color: CColors.brown);
  }
  late List<SvgPicture> data = [
    getIcon('gods'),
    getIcon('creatures'),
    getIcon('myths'),
    getIcon('world'),
  ];

  Container buildNavBarItem(int i) {
      return Container(height: 60, width: 70,
          child: GestureDetector(
              onTap: () { setState(() { selectedIndex = i; }); },
              child: AnimatedContainer(
                  width: 40,
                  duration: const Duration(milliseconds: 500),
                  decoration: BoxDecoration(
                      border: i == selectedIndex ? Border(
                          bottom: BorderSide(width: 2, 
                              color: CColors.gold)): null,
                      gradient: i == selectedIndex ? LinearGradient(
                          colors: [ CColors.gold, Colors.transparent ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter) : null
                      ),
                  child: Padding(padding: const EdgeInsets.all(8), child: data[i])
                  )
            )
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CColors.mainbg,
        body: _selectedPage[selectedIndex],
        bottomNavigationBar: Padding(padding: const EdgeInsets.all(20), 
            child: Material(elevation: 10, 
                type: MaterialType.card,
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                color: CColors.mainbg,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget> [
                        buildNavBarItem(0),
                        buildNavBarItem(1),
                        buildNavBarItem(2),
                        buildNavBarItem(3),
                    ],
                ),
            ),
        ),
    );
  }
}

