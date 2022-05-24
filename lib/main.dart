import 'package:flutter/material.dart';

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
      body: const Center(
        child: Text(
          "Hi, I'm a Flutter",
          style: TextStyle(
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}
