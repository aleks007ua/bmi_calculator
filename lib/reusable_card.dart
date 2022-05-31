

import 'package:flutter/material.dart';

const bottomContainerHeidth = 90.0;
const activeCardColour = Color.fromARGB(255, 29, 29, 46);
const bottomContainerColour = Colors.pink;

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colorChange, required this.cardChild});

  final Color colorChange;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: colorChange,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}