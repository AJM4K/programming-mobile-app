import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:verse_program/Domain/Models.dart';
import 'package:verse_program/ViewModel/05%20CodeModelView.dart';
import 'package:verse_program/ViewModel/06%20MarkDownModelView.dart';
import 'package:verse_program/ViewModel/quiz/07%20codeChoice.dart';

import '01 quizPage.dart';

class QuizLessonView extends StatelessWidget {
  final ChooseCode ModelData;
  QuizLessonView({super.key, required this.ModelData});

  List<Widget> CodeChoice = [];

  @override
  Widget build(BuildContext context) {
    List<CodeQuiz> x = ModelData.answers;
    for (CodeQuiz r in x) {
      CodeChoice.add(CodeChoiceView(
        modelData: r,
      ));
      //  CodeChoice.add(Divider());
    }
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(12),
        child: Column(children: [
          Container(
              height: MediaQuery.of(context).size.height * 0.18,
              width: MediaQuery.of(context).size.height,
              //  color: Colors.amber,
              child: MarkDownView(ModelData: ModelData.questionText)),
          Container(
            margin: EdgeInsets.only(top: 18, bottom: 18),
            child: Text("Choose one from below"),
          ),
          Expanded(
              child: Column(
            children: CodeChoice,
          )),
        ]));
  }
}
