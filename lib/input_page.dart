import 'package:flutter/material.dart';

const bottomContainerHeidth = 90.0;

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
                    colorChange: Color.fromARGB(255, 29, 29, 46),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colorChange: Color.fromARGB(255, 29, 29, 46),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colorChange: Color.fromARGB(255, 29, 29, 46),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colorChange: Color.fromARGB(255, 29, 29, 46),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colorChange: Color.fromARGB(255, 29, 29, 46),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.pink,
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
  ReusableCard({required this.colorChange});

  final Color colorChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: colorChange,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
