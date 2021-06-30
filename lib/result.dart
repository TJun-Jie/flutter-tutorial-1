import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  final VoidCallback resetQuiz;

  const Result({Key key, this.resultScore, this.resetQuiz}) : super(key: key);

  String get resultPhrase {
    var resultText = 'You did it!';

    if (resultScore <= 5) {
      resultText = 'You are awesome and innocnet!';
    } else if (resultScore <= 7) {
      resultText = 'test2';
    } else if (resultScore <= 9) {
      resultText = 'test3';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        FlatButton(
          onPressed: resetQuiz,
          child: Text('Reset'),
          textColor: Colors.blue,
        )
      ],
    ));
  }
}
