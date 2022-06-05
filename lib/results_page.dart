import 'package:bmi_calculator/components/constains.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';
import 'components/reusable_card.dart';
import 'components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

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
                    'Awesome',
                    textAlign: TextAlign.center,
                    style: resultTextFirstTextStyle
                  ),
                  Text(
                    '165.0',
                    textAlign: TextAlign.center,
                    style: resultNumberTextStyle,
                  ),
                  Text(
                    'Your body rely good',
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