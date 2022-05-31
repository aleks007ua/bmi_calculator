import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const iconCardMale = FontAwesomeIcons.mars;
const iconCardFemale = FontAwesomeIcons.venus;
const iconTextMale = 'MALE';
const iconTextFemale = 'FEMALE';

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
        const SizedBox(
          height: 15,
        ),
        Text(
         textIcon,
         style: const TextStyle(
           fontSize: 20,
           color: Colors.white,
         ),
        ),
      ],
    );
  }
}