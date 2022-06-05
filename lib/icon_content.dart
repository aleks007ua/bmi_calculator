import 'package:flutter/material.dart';
import 'constains.dart';

class IconContent extends StatelessWidget {
  IconContent({required this.iconCardForButtom, required this.textIcon});

  final IconData iconCardForButtom;
  final String textIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        Icon(
          iconCardForButtom,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
         textIcon,
         style: iconTextStyle 
        ),
      ],
    );
  }
}