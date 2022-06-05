import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constains.dart';

enum Gender {
  male,
  female,
}

Gender? selectedGender;

class InputPage extends StatefulWidget {
  InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  void updateColour(Gender selectedGender) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(Gender.male);
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      cardChild: IconContent(
                        iconCardForButtom: iconCardMale,
                        textIcon: iconTextMale,
                      ),
                      colorChange:
                          // maleColourCard,
                          selectedGender == Gender.male
                              ? activeCardColour
                              : inActiveCardColour,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(Gender.female);
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      colorChange:
                          // femaleColourCard,
                          selectedGender == Gender.female
                              ? activeCardColour
                              : inActiveCardColour,
                      cardChild: IconContent(
                        iconCardForButtom: iconCardFemale,
                        textIcon: iconTextFemale,
                      ),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'HEIGHT',
                    style: iconTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '180',
                        style: numberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: iconTextStyle,
                        ),
                    ],
                  ),
                ],),
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
                          '',
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
                          '',
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
            child: Center(
              child: Text(
                'CALCULATE',
                style: TextStyle(
                  fontSize: 25,
                ),
                
              ),
            ),
          ),
        ],
      ),
    );
  }
}
