import 'package:flutter/material.dart';
import 'package:egyptianmythology/resources/colors.dart';
import 'package:egyptianmythology/pages/tabs/facts.dart';

class CardLists {

    static Widget getListOf(List<String> data, String baseRoute, 
        String title, void Function(int idx) onCardTap) {
      return Scaffold(
        backgroundColor: CColors.mainbg,
        body: Column(
            children: <Widget> [
                const SizedBox(height: 60),
                Text(title, style: TextStyle(
                    color: CColors.blue, fontWeight: FontWeight.bold, 
                    fontSize: 35, letterSpacing: 5, fontFamily: 'Isis')),
                Expanded(
                    child: PageView.builder(
                        controller: PageController(viewportFraction: 0.8),
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                            return Padding(
                                padding: const EdgeInsets.fromLTRB(10,70,10,90),
                                child: Card(color: CColors.mainbg,
                                    shadowColor: CColors.secondbg,
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20)),
                                    child: Hero(
                                        tag: data[index],
                                        child: GestureDetector(
                                            onTap: () { onCardTap(index); },
                                            onLongPress: () {
                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                        builder: (context) => Facts()));
                                            },
                                            child: Container(
                                                decoration: BoxDecoration(
                                                border: Border.all(color: CColors.gold, width: 3),
                                                borderRadius:BorderRadius.circular(20),
                                                image: DecorationImage(fit: BoxFit.cover,
                                                    image: AssetImage('$baseRoute/${data[index]}.png'))),
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
