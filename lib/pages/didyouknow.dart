import 'package:flutter/material.dart';
import 'package:egyptianmythology/resources/colors.dart';

class DidYouKnow extends StatefulWidget {
  @override
  State<DidYouKnow> createState() => _DidYouKnowState();
}

class _DidYouKnowState extends State<DidYouKnow> {
    Widget getCard(String text, bool isRight) {
        return Container(
                margin: const EdgeInsets.only(bottom: 10, top: 25),
                height: 200,
                padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
                child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: CColors.gold,
                        borderRadius: isRight ? const BorderRadius.only(
                                bottomLeft: Radius.circular(40),
                                topRight: Radius.circular(40)) : 
                            const BorderRadius.only(
                                bottomRight: Radius.circular(40),
                                topLeft: Radius.circular(40),
                            ),
                        ),
                    padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15, right: 15),
                    child: SingleChildScrollView(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget> [
                            Center(
                                child: Text(text, style: TextStyle(fontSize: 18, color: CColors.brown, fontFamily: 'Egypt')),
                            ),]
                        ),
                    ),
                ),
        );
    }
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                iconTheme: IconThemeData( color: CColors.blue),
                elevation: 0,
                backgroundColor: CColors.mainbg,
                centerTitle: true,
                title: Text('Stiati ca?', style: TextStyle(color: CColors.blue, letterSpacing: 3, fontSize: 25, fontFamily: 'Isis', fontWeight: FontWeight.w600)),
            ),
            backgroundColor: CColors.mainbg,
            body: ListView(
                children: <Widget>[
                    getCard('Egiptenii nu aveau weekend-uri, singurele zile libere erau de sarbatori.', true),
                    getCard('Piramidele nu au fost construite de sclavi, au fost de \n\'constructori de piramide\'.', false),
                    getCard('La un moment dat Zeii aproape au sters rasa umana ca si razbunare pentru insultarea zeului Ra.', true),
                    getCard('Egiptenii avertizau zeii ca daca nu se vor putea intalnii cu persoanele iubite dupa viata de apoi, acestia vor oprii toate ofrandele si rugaciunile lor.', false),
                    getCard('Nu toata lumea era mumificata deoarece ocupa mult timp si resurce. Numai oamenii bogati ai societatii erau mumificati.', true),
                    getCard('Femeile aveau dreptul de a cumpara si de a detine o proprietate. Daca aceastea erau maritate, la divort aveau dreptul de a-si apara bunurile.', false),
                ],
            ),
        );
    }
}
