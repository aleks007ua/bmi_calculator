import 'dart:math';
import 'package:bmi_calculator/input_page.dart';

class CalculatorBrain {
  final int height;
  final int weight;
  final double _bmi;

  CalculatorBrain({
    required this.height,
    required this.weight,
  }) : _bmi = weight / pow(height/100, 2);

  String calculateBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Жирдяй';
    } else if (_bmi > 18.5) {
      return 'Awesome';
    } else {
      return 'Пора більше їсти';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Твоє тіло більше, ніж потрібно. Пора підняти 5 точку, вийди погуляти';
    } else if (_bmi > 18.5) {
      return 'Твоє тіло ідеальне, надалі займайся спортом, слідкуй за харчуванням';
    } else {
      return 'Ти не доїдаєш... Може пора поїсти?';
    }
  }
}
