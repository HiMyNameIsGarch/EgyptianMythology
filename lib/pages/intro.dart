import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:egyptianmythology/resources/colors.dart';

class Intro extends StatefulWidget {
  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {

  Widget getTitle(String text) {
      return Text(text, style: TextStyle( color: CColors.gold,
                fontSize: 23, fontWeight: FontWeight.bold,
                fontFamily: 'Obelisk', letterSpacing: 2));
  }
  Widget getBody(String text) {
      return Text(text, textAlign: TextAlign.center, style: TextStyle(color:
                CColors.secondbg, fontSize: 18, wordSpacing: 1, fontFamily: 'Egypt' ));
  }
  Widget getBtnText(String text){
      return Text(text, style: TextStyle(fontSize: 16,color: CColors.secondbg, fontFamily: 'Egypt'));
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
        curve: Curves.easeInOut,
        color: CColors.gold,
        globalBackgroundColor: CColors.mainbg,
        onDone: () {
            Navigator.pushReplacementNamed(context, '/home');
        },
        isProgress: false,
        done: getBtnText('Sa incepem'),
        next: getBtnText('Urmatorul'),
        pages: [
           PageViewModel(image: Image.asset('assets/intro/egypt.png'), 
              titleWidget: getTitle('Egiptul Antic'),
              bodyWidget: getBody('Egiptul Antic a fost o civilizatie importanta in lumea Mediteraneana. De la marile piramide ale Vechiului Regat pana la cuceririle militare ale Noului Regat, splendoarea Egiptului a continuat sa uimeasca arheologii si istoricii care au creat un mediu vibrant de studiu al acestuia.')),
           PageViewModel(image: Image.asset('assets/intro/sites.png'), 
              titleWidget: getTitle('Informatii'),
              bodyWidget: getBody('Principalele surse de informatie despre Egiptul Antic sunt monumentele, obiectele si artifactele care au fost restaurate din siturile arheologice, acoperite cu hieroglife care au fost recent descifrate.')),
           PageViewModel(image: Image.asset('assets/intro/gods.png'), 
              titleWidget: getTitle('Zei'),
              bodyWidget: getBody('Zeii Egiptului Antic si zeitele aratau aproape ca oamenii si se comportau aproximativ la fel. Unele zeitati au avut trasaturi animalice, precum cap de animal peste un corp uman. Fiind zei oamenii trebuiau sa ii slujeasca')),
        ],
    );
  }
}


