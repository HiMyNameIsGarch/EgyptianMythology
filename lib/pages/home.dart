import 'package:flutter/material.dart';
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

  int selectedIndex = 0;
  final List<Widget> _selectedPage = [World(), Gods(), Creatures(), Myths() ];
  SvgPicture getIcon(String name){
      return SvgPicture.asset('assets/icons/$name.svg', color: CColors.secondbg);
  }
  late List<SvgPicture> data = [
    getIcon('world'),
    getIcon('gods'),
    getIcon('creatures'),
    getIcon('myths'),
  ];

  Container buildNavBarItem(int i) {
      return Container(height: 60, width: 70,
          child: GestureDetector(
              onTap: () { setState(() { selectedIndex = i; }); },
              child: AnimatedContainer(
                  width: 40,
                  curve: Curves.easeInOutCirc,
                  duration: const Duration(milliseconds: 500),
                  decoration: BoxDecoration(
                      border: i == selectedIndex ? Border(
                          bottom: BorderSide(width: 2, 
                              color: CColors.gold)): null,
                      gradient: i == selectedIndex ? const LinearGradient(
                          colors: [ Colors.transparent, Colors.transparent ],
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
                shadowColor: CColors.secondbg,
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

