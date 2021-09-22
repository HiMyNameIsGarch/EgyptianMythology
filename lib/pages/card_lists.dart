import 'package:flutter/material.dart';
import 'package:egyptianmythology/resources/colors.dart';

class CardLists {

    static Widget getListOf(List<String> data, bool isReverse, 
        String baseRoute, String title, void Function(int idx) onCardTap, PageController ctrl) {
      return Scaffold(
        backgroundColor: CColors.mainbg,
        body: Column(
            children: <Widget> [
                const SizedBox(height: 60,),
                Text(title, style: TextStyle(
                    color: CColors.lace, fontWeight: FontWeight.bold, 
                    fontSize: 35, letterSpacing: 5, fontFamily: 'Isis')),
                Expanded(
                    child: PageView.builder(
                        reverse: isReverse,
                        controller: ctrl,
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                            return Padding(
                                padding: const EdgeInsets.fromLTRB(10,70,10,90),
                                child: Card(color: CColors.mainbg,
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20)),
                                    child: Hero(
                                        tag: data[index],
                                        child: GestureDetector(
                                            onTap: () { onCardTap(index); },
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
