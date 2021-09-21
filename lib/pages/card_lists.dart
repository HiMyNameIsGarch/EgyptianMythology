import 'package:flutter/material.dart';

class CardLists {

    static Widget getListOf(List<String> data, bool isReverse, 
        String baseRoute, void Function(int idx) onCardTap, PageController ctrl) {
      return Scaffold(
        body: Column(
            children: <Widget> [
                const SizedBox(height: 60,),
                const Text("Zei", style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold, 
                    fontSize: 35, letterSpacing: 3)),
                Expanded(
                    child: PageView.builder(
                        reverse: isReverse,
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
                                            onTap: () { onCardTap(index); },
                                            child: Container(
                                                decoration: BoxDecoration(
                                                border: Border.all(color: Colors.yellow, width: 3),
                                                borderRadius:BorderRadius.circular(20),
                                                image: DecorationImage(fit: BoxFit.fill,
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
