import 'dart:math';

import 'package:flutter/material.dart';

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
