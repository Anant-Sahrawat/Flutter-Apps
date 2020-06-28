import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;

  double _bmi;

  String getBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getAdvice() {
    if (_bmi >= 25) {
      return 'You have higher than normal body weight. You should exercise more !!';
    } else if (_bmi >= 18.5) {
      return 'You have normal body weight. Good job !!';
    } else {
      return 'You have lower than normal body weight. You should eat a bit more !!';
    }
  }
}
