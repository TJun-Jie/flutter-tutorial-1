import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  const Quiz(
      {Key key,
      @required this.questions,
      @required int questionIndex,
      @required this.answerQuestion})
      : _questionIndex = questionIndex,
        super(key: key);

  final List<Map<String, Object>> questions;
  final int _questionIndex;
  final Function answerQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[_questionIndex]['questionText']),
        ...(questions[_questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answers) =>
                Answer(() => answerQuestion(answers['score']), answers['text']))
            .toList()
      ],
    );
  }
}
