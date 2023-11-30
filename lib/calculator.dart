import 'dart:math';
import 'package:flutter/material.dart';

enum ResultsKeys { state, color, message }

class Calculator {
  Calculator({required this.height, required this.weight});
  final int height;
  final int weight;
  double bmi = 0;
  String calculateBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  Map<ResultsKeys, dynamic> getResult() {
    calculateBMI();
    if (bmi >= 25) {
      return {
        ResultsKeys.state: "Overweight",
        ResultsKeys.color: Color(0xFFBD0000),
        ResultsKeys.message: "You are overweight! try to exercise more"
      };
    } else if (bmi > 18.5) {
      return {
        ResultsKeys.state: "Normal",
        ResultsKeys.color: Color(0xFF00CB1B),
        ResultsKeys.message: "You have a normal body weight. Good job!"
      };
    } else {
      return {
        ResultsKeys.state: "Underweight",
        ResultsKeys.color: Color(0xFFE5B700),
        ResultsKeys.message:
            "You have a lower than normal body weight. You should eat more!"
      };
    }
  }
}
