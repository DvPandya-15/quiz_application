import 'package:flutter/material.dart';

class QuizViewModel with ChangeNotifier {
  int _correctAnswers = 0;

  int get correctAnswers => _correctAnswers;
  int _totalScore = 0;
  int get totalScore => _totalScore;

  void increaseScore(int score) {
    _totalScore += score;
    _correctAnswers = _correctAnswers + 1;
    notifyListeners();
  }

  void resetScore() {
    _totalScore = 0;
    notifyListeners();
  }
}
