import 'package:flutter/material.dart';

class ReusableCard extends StatefulWidget {
  ReusableCard({required this.colorChange, required this.cardChild});

  final Color colorChange;
  final Widget cardChild;

  @override
  State<ReusableCard> createState() => _ReusableCardState();
}

class _ReusableCardState extends State<ReusableCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget.cardChild,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: widget.colorChange,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}