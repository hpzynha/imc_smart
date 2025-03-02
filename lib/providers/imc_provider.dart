import 'package:flutter/material.dart';

class ImcProvider with ChangeNotifier {
  double? _bmiResult;
  bool _showResults = false;

  double? get bmiResult => _bmiResult;
  bool get showResults => _showResults;

  void calculateBMI(String weight, String height) {
    final double? weightValue = double.tryParse(weight);
    final double? heightValue = double.tryParse(height);

    if (weightValue == null || heightValue == null || heightValue == 0) {
      return;
    }

    _bmiResult = weightValue / ((heightValue / 100) * (heightValue / 100));
    _showResults = true;
    notifyListeners();
  }
}
