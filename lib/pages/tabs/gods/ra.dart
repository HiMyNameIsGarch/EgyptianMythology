import 'package:flutter/material.dart';
import 'dart:ui';

class RaGod extends StatefulWidget {
  @override
  State<RaGod> createState() => _RaGodState();
}

class CustomDialog extends StatelessWidget {
    final String title, description;
    late String buttonText;
    late Image image;
    CustomDialog({required this.title, required this.description});
    @override
    Widget build(BuildContext context) {
        return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)
            ),
            elevation: 0,
            backgroundColor: Colors.transparent,
            child: dialogContent(context)
        );
    }
    Widget dialogContent(BuildContext context) {
        return Stack(
            children: <Widget> [
                Container(
                    padding: EdgeInsets.only(top: 100, bottom: 14, left: 10, right: 10),
                    margin: EdgeInsets.only(top:16),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(17),
                        boxShadow: [
                            BoxShadow( color: Colors.black26, blurRadius: 10,
                                offset: Offset(0,10),)
                        ]
                    ),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                            Text(title, style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w700
                            )),
                            SizedBox(height: 20),
                            Expanded(
                                child: SingleChildScrollView(
                                    child: Text(description, style: TextStyle( fontSize: 14)),
                                ),
                            ),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: TextButton(
                                    onPressed: (){ Navigator.pop(context); },
                                    child: Text('Nice'),
                                ),
                            ),
                        ],
                    ),
                ),
                Positioned(
                    top: 0,
                    left: 16,
                    right: 16,
                    child: CircleAvatar(backgroundColor: Colors.blue, radius: 50,
                        backgroundImage: AssetImage('assets/gods/god1.png')
                    )
                ),
            ],
        );
    }
}

class _RaGodState extends State<RaGod> {
  @override
  Widget build(BuildContext context) {
    var bottomContentText = const Text(
      'lorem ipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumlorem iipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem psumlorem ipsumlorem iipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumlorempsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsum',
      style: TextStyle(fontSize: 16.0),
    );
    final readButton = Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          onPressed: () => {
              showDialog(context: context, builder: (context) => 
                CustomDialog(title: 'Ra\'s myth', description: 'lorem ipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumloremm iipsumlorem iipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem psumlorem ipsumlorem iipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumlorempsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsum'))
          },
          child: const Text("I WANNA READ THE MYTH",
              style: TextStyle(color: Colors.white)),
        ));
    final bottomContent = Container(
      height: MediaQuery.of(context).size.height * 0.55,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.fromLTRB(20,10,20,10),
      child: Center(
        child: SingleChildScrollView(child: Column(
          children: <Widget>[bottomContentText, readButton],
        )),
      ),
    );
    final topContent = Stack(
      children: <Widget>[
        Hero(tag: 'god1',
          child: Container(
            padding: const EdgeInsets.only(left: 10.0),
            height: MediaQuery.of(context).size.height * 0.45,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(
                  top: Radius.circular(0), bottom: Radius.circular(40)),
              image: DecorationImage(
                image: AssetImage("assets/gods/god1.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(left: 8.0, top: 40.0,
          child: InkWell(
            onTap: () { Navigator.pop(context); },
            child: const Icon(Icons.arrow_back, color: Colors.white),
          ),
        )
      ],
    );
    return Scaffold(
      body: Column(
        children: <Widget>[topContent, bottomContent],
      ),
    );
  }
}
