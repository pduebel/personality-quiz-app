import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 7) {
      resultText = 'You are awesome!';
    } else if (resultScore <= 13) {
      resultText = 'Pretty likeable!';
    } else {
      resultText = 'You weirdo!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text(
          resultPhrase,
          style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(child: Text('Restart Quiz!'), onPressed: this.resetHandler),
      ]),
    );
  }
}
