import 'package:flutter/material.dart';
import 'dart:ui';

class CustomDialog extends StatelessWidget {
  final String title, description;
  late String buttonText;
  late Image image;
  CustomDialog({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: dialogContent(context));
  }

  Widget dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding:
              const EdgeInsets.only(top: 100, bottom: 14, left: 10, right: 10),
          margin: const EdgeInsets.only(top: 16),
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(17),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, 10),
                )
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(title,
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.w700)),
              const SizedBox(height: 20),
              Expanded(
                child: SingleChildScrollView(
                  child:
                      Text(description, style: const TextStyle(fontSize: 14)),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Nice'),
                ),
              ),
            ],
          ),
        ),
        const Positioned(
            top: 0,
            left: 16,
            right: 16,
            child: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 50,
                backgroundImage: AssetImage('assets/gods/god1.png'))),
      ],
    );
  }
}
