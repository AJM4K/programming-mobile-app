import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:verse_program/Domain/Models.dart';
import 'package:verse_program/app/Band.dart';

import '03 quiz quiz.dart';

final GlobalKey<_QuizPage4kState> myWidgetKey = GlobalKey<_QuizPage4kState>();

class QuizPage4k extends StatefulWidget {
  QuizPage4k({
    super.key,
  });

  @override
  State<QuizPage4k> createState() => _QuizPage4kState();
}

class _QuizPage4kState extends State<QuizPage4k> {
  final PageController scrollController = PageController();

  void outsideAccessUsingGlobalKey() {
    print("outside access throuth the global key");
  }

  @override
  Widget build(BuildContext context) {
    int index = context.read<BAND>().activeQuiz;
    QuizLesson quiz = context.read<BAND>().quizes[index];

    context.read<BAND>().controller.stream.listen((event) {
      print("should navigate tot the next question");
      scrollController.animateToPage(
        (scrollController.page! + 1).toInt(),
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
      print(scrollController.page);

      if ((scrollController.page!.toInt() + 1) == quiz.questions.length) {
        context.go("/FirstMain");
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(quiz.title),
      ),
      body: SafeArea(
        child: Container(
          child: QuizBasedVerticalView(
            controller: scrollController,
            ModelData: quiz,
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 18, right: 18, bottom: 28),
        child: FloatingActionButton.extended(
          backgroundColor: Color.fromARGB(255, 255, 35, 35),
          onPressed: () {
            print(scrollController.page);
            scrollController.animateToPage(
              (scrollController.page! + 1).toInt(),
              duration: Duration(milliseconds: 300),
              curve: Curves.easeIn,
            );
            print(scrollController.page);

            if ((scrollController.page!.toInt() + 1) == quiz.questions.length) {
              context.go("/FirstMain");
            }
          },
          label: Text(
            "Next",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
