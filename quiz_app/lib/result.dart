import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Results(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText = "You did it!";
    if (resultScore <= 8) {
      resultText = "You are awesome and innocent";
    } else if (resultScore <= 15) {
      resultText = "Pretty likable";
    } else if (resultScore <= 22) {
      resultText = "You are strange??!";
    } else {
      resultText = "You are Bad!!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Restart Quiz',
            ),
            textColor: Colors.blue,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
