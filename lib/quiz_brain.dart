// ignore_for_file: prefer_final_fields

import 'package:flutter/rendering.dart';

import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List _myQuestions = [
    Question(
        questionText: 'You can lead a cow down stairs but not up stairs.',
        questionAnswer: false),
    Question(
        questionText:
            'Approximately one quarter of human bones are in the feet.',
        questionAnswer: true),
    Question(questionText: 'A slug\'s blood is green.', questionAnswer: true)
  ];
  void nextQuestion() {
    if (_questionNumber < _myQuestions.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _myQuestions[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _myQuestions[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _myQuestions.length - 1) {
      debugPrint('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
