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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget> [
                            Text(text, style: TextStyle(fontSize: 18, color: CColors.brown, fontFamily: 'Egypt')), ]
                        ),
                    ),
                ),
        );
    }
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                iconTheme: IconThemeData( color: CColors.blue,),
                elevation: 0,
                backgroundColor: CColors.mainbg,
                centerTitle: true,
                title: Text('Stiati ca?', style: TextStyle(color: CColors.blue, letterSpacing: 3, fontSize: 25, fontFamily: 'Isis', fontWeight: FontWeight.w600)),
            ),
            backgroundColor: CColors.mainbg,
            body: ListView(
                children: <Widget>[
                    getCard('some fucking text that needs to be redeaasdasdasdfasd redeaasdasdasdfasd redeaasdasdasdfasd redeaasdasdasdfasd redeaasdasdasdfasd redeaasdasdasdfasd redeaasdasdasdfasd redeaasdasdasdfasd redeaasdasdasdfasd fasdf asdf sadf asdf sadf sadf dfg fdggsjfasdf asdf saghfdfd""r', true),
                    getCard('second', false),
                    getCard('second', true),
                    getCard('second', false),
                ],
            ),
        );
    }
}
