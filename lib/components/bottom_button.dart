import 'package:flutter/material.dart';
import 'constains.dart';

class BottomButton extends StatelessWidget {
  final void Function() onTap;
  final String? buttomTitle;

  // ignore: use_key_in_widget_constructors
  const BottomButton({
    required this.onTap,
    required this.buttomTitle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: bottomContainerColour,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: bottomContainerHeidth,
        child: Center(
          child: Text(
            buttomTitle!,
            style: largeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}