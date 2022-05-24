import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Color.fromARGB(255, 14, 16, 32),
        ),
        scaffoldBackgroundColor: Color.fromARGB(255, 14, 16, 32),
      ),
      home: InputPage(),
    );
  }
}