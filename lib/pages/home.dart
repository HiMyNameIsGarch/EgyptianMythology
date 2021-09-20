import 'package:flutter/material.dart';
import 'package:egyptianmythology/pages/tabs/gods.dart';
import 'package:egyptianmythology/pages/tabs/creatures.dart';
import 'package:egyptianmythology/pages/tabs/world.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 1;
  final List<Widget> _selectedPage = [Gods(), Creatures(), World()];
  final List<IconData> data = [
    Icons.home_outlined,
    Icons.access_time,
    Icons.garage
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: _selectedPage[selectedIndex],
        bottomNavigationBar: Padding(padding: const EdgeInsets.all(20), 
            child: Material(elevation: 10, 
                borderRadius: BorderRadius.circular(15),
                color: Colors.black,
                child: Container(height: 60, width: double.infinity,
                    child: ListView.builder(
                        itemCount: data.length,
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        itemBuilder: (ctx, i) => Padding(
                            padding: EdgeInsets.symmetric(horizontal: 50),
                            child: GestureDetector(
                                onTap: () {
                                    setState(() {
                                        selectedIndex = i;
                                    });
                                },
                                child: AnimatedContainer(
                                    duration: Duration(milliseconds: 250),
                                    width: 35,
                                    decoration: BoxDecoration(
                                        border: i == selectedIndex ? const Border(
                                            bottom: BorderSide(width: 3, 
                                                color: Colors.white)): null,
                                        gradient: i == selectedIndex ? LinearGradient(
                                            colors: [
                                                Colors.grey.shade800,
                                                Colors.black
                                            ],
                                            begin: Alignment.bottomCenter,
                                            end: Alignment.topCenter
                                        ) : null
                                    ),
                                    child: Icon(data[i], size: 35, 
                                        color: i == selectedIndex ? 
                                                    Colors.white: Colors.grey)
                                )
                            )
                        ),
                        scrollDirection: Axis.horizontal,
                    ),
                ),
            ),
        ),
    );
  }
}

