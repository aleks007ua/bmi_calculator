import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';

const bottomContainerHeidth = 90.0;
const activeCardColour = Color.fromARGB(255, 29, 29, 46);
const bottomContainerColour = Colors.pink;

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardChild: IconContent(
                      iconCardForButtom: iconCardMale,
                      textIcon: iconTextMale,
                    ),
                    colorChange: activeCardColour,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colorChange: activeCardColour,
                    cardChild: IconContent(
                      iconCardForButtom: iconCardFemale,
                      textIcon: iconTextFemale,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colorChange: activeCardColour,
              cardChild: Column(
                children: const [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'MALE',
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colorChange: activeCardColour,
                    cardChild: Column(
                      children: const [
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'MALE',
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colorChange: activeCardColour,
                    cardChild: Column(
                      children: const [
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'MALE',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColour,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeidth,
          ),
        ],
      ),
    );
  }
}

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
