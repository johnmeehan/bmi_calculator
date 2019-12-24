import 'dart:math';

class Calculator {
  final int height;
  final int weight;
  double _bmi;

  Calculator({this.height, this.weight}) {
    _bmi = weight / pow(height / 100, 2);
  }

  String calculateBMI() {
    // double _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 35) {
      return 'Extremly Obese';
    } else if (_bmi >= 30 && _bmi <= 34.9) {
      return 'Obese';
    } else if (_bmi >= 25.0 && _bmi <= 29.9) {
      return 'Overweight';
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good Job!';
    } else {
      return 'You have a lower than normal body weight.';
    }
  }
}
