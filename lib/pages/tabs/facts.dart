import 'package:flutter/material.dart';
import 'package:egyptianmythology/resources/colors.dart';
import 'package:egyptianmythology/pages/didyouknow.dart';

class Facts extends StatefulWidget {
  @override
  State<Facts> createState() => _FactsState();
}

class CheckBoxState {
    late String title;
    late bool value;
    CheckBoxState({required this.title, required this.value});
}

class _FactsState extends State<Facts> {
  Widget getCheckBox(CheckBoxState checkbox){
      return CheckboxListTile(
              activeColor: CColors.gold,
              checkColor: CColors.brown,
              tileColor: CColors.mainbg,
              selectedTileColor: CColors.gold,
              controlAffinity: ListTileControlAffinity.leading,
              title: Text(checkbox.title, style: TextStyle(color: CColors.secondbg, fontSize: 18, fontFamily: 'Egypt')),
              value: checkbox.value,
              onChanged: (bool? val) {
                setState(() { 
                    checkbox.value = val!; 
                    for(var item in items){
                        if(checkbox.title != item.title){
                            item.value = false;
                        }
                    }
                });
              }
      );
  }

  final items = [
    CheckBoxState(title: 'prima', value: false),
    CheckBoxState(title: 'a doua', value: false),
    CheckBoxState(title: 'a treia', value: false),
    CheckBoxState(title: 'a patra', value: false),
  ];

  late String correct = items[2].title;
  final String question = "?";

  @override
  Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: CColors.mainbg,
            body: Center(
            child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(40),
                children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.only(bottom: 40),
                        child: Text(question, 
                        textAlign: TextAlign.center, style: TextStyle(fontSize: 30, color: CColors.blue, letterSpacing: 2,fontFamily: 'Isis', fontWeight: FontWeight.w500)),
                    ),
                    ...items.map(getCheckBox).toList(),
                    Padding(
                        padding: const EdgeInsets.only(top: 40),
                    child: TextButton(
                        style: ButtonStyle(
                            overlayColor: MaterialStateProperty.all(CColors.secondbg)
                        ),
                        onPressed: () {
                            var selected;
                            for(var item in items){
                                if(item.value == true){ selected = item; }
                            }
                            if(selected != null){
                                if(selected.title == correct) {
                                    for(var item in items){
                                        item.value = false;
                                    }
                                    setState(() => {});
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DidYouKnow()));
                                } else {
                                    for(var item in items){
                                        item.value = false;
                                    }
                                    setState(() => items.shuffle());
                                }
                            } 
                        },
                        child: Text('verifica', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 3, color: CColors.blue, fontFamily: 'Isis')),
                    ),
                    ),
                ],
            ),
            ),
        );
  }
}



