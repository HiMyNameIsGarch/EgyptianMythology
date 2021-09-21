import 'package:flutter/material.dart';
//import 'package:flutter/services.dart'; use to disable status/bottom bar
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
  final List<IconData> data = [
    Icons.home_outlined,
    Icons.add_sharp,
    Icons.access_time,
    Icons.garage
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
                              color: CColors.lace)): null,
                      gradient: i == selectedIndex ? LinearGradient(
                          colors: [ Colors.grey.shade800, Colors.black ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter) : null
                      ),
                  child: Icon(data[i], size: 35, 
                      color: i == selectedIndex ? 
                      CColors.lace: Colors.grey)
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

