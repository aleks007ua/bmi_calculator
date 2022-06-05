import 'package:bmi_calculator/components/constains.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';
import 'components/reusable_card.dart';
import 'components/bottom_button.dart';
import 'components/calculator_brain.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultsPage({
    required this.bmiResult,
    required this.interpretation,
    required this.resultText,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(40),
              child: Text(
                'Your result',
                style: numberTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colorChange: activeCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    resultText,
                      textAlign: TextAlign.center,
                      style: resultTextFirstTextStyle,
                      ),
                  Text(
                    bmiResult,
                    textAlign: TextAlign.center,
                    style: resultNumberTextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: resultTextFinalTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) {
                    return InputPage();
                  }),
                ),
              );
            },
            buttomTitle: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
