import 'package:flutter/material.dart';

import '../utils/question.dart';
import '../utils/quiz.dart';

import '../ui/answer_button.dart';
import '../ui/question_text.dart';
import '../ui/correct_wrong_overlay.dart';

class QuizPage extends StatefulWidget {
  @override
  State createState() => new QuizPageState();
}

class QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
      return new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Column( // this is my pager
            children: <Widget>[
              new AnswerButton(true, () => print("elo")),
              new QuestionText("Pizza is nice", 1),
              new AnswerButton(false, () {print("elo2"); }),
            ],
          ),
          new CorrectWrongOverlay(false)
        ],
      );
    }
}