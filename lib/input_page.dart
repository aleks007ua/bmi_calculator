import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeidth = 90.0;
const activeCardColour = Color.fromARGB(255, 29, 29, 46);
const inActiveCardColour = Color.fromARGB(255, 16, 16, 26);
const bottomContainerColour = Colors.pink;

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
  // Color maleColourCard = inActiveCardColour;
  // Color femaleColourCard = inActiveCardColour;

  void updateColour(Gender selectedGender) {
    //   if (selectedGender == Gender.male) {
    //     if (maleColourCard == inActiveCardColour) {
    //       maleColourCard = activeCardColour;
    //       femaleColourCard = inActiveCardColour;
    //     } else {
    //       maleColourCard = inActiveCardColour;
    //       femaleColourCard = activeCardColour;
    //     }
    //   }
    //   if (selectedGender == Gender.female) {
    //     if (femaleColourCard == activeCardColour) {
    //       femaleColourCard = inActiveCardColour;
    //       maleColourCard = activeCardColour;
    //     } else {
    //       femaleColourCard = activeCardColour;
    //       maleColourCard = inActiveCardColour;
    //     }
    //   }
  }

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
