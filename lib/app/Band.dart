import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:verse_program/Domain/Models.dart';
import '../Data/Dart/Dart language.dart';
import '../Data/Quiz/quiz.dart';
import '../Data/csharp/csharp language.dart';
import '../Data/python/python language.dart';
import 'BANDBloc.dart';

class BAND {
  late BuildContext contextBAND;
  BAND();

  LanguagePage dataBand = dartLanguage;

  List<LanguagePage> mainPageData = [
    dartLanguage,
    pythonLanguage,
    csharpLanguage,
  ];

  List<String> imagepath = [
    "assets/Dart-logo.png",
    "assets/python-logo.png",
    "assets/csharp-logo.png"
  ];

  int activeLesson = 0;

  void setActiveLesson(int index) {
    activeLesson = index;
  }

  int activeQuiz = 0;

  void setactiveQuiz(int index) {
    activeQuiz = index;
  }

  // quiz code data
  List<QuizLesson> quizes = [
    quizLesson,
  ];

  // Create a StreamController with an integer type
  StreamController<int> controller = StreamController<int>();
  Stream<int>? stream;

  void getStream() {
    // Create a stream from the controller
    stream = controller.stream;
  }

  void addStream() {
    controller.add(1);
  }
// ---------  do logic here ----------------

  Model getModel() {
    return Model(id: "1", name: "new model");
  }

// ---------------  do not change these below ----------------------
  void SetBuildContext(BuildContext contexting) {
    contextBAND = contexting;
  }

  Future<bool> testRefreshBandBloc() async {
    // todo : do something here

    // this function is resposible to update all the pages
    refreshPages();

    return true;
  }

  void refreshPages() => contextBAND.read<BANDBloc>().add(RefreshBandEvent());
}
