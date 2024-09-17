class CodeModel {
  String code;
  CodeModel({required this.code});
}

class MarkdownModel {
  String mark;
  MarkdownModel({required this.mark});
}

class PageModel {
  CodeModel code;
  MarkdownModel mark;
  PageModel({required this.code, required this.mark});
}

class LessonPage {
  String title;
  String textCompleted;
  List<PageModel> listPage;
  LessonPage(
      {required this.listPage,
      required this.title,
      required this.textCompleted});
}

class LanguagePage {
  String imagePath;
  bool active;
  List<LessonPage> lessons;
  String title;
  String description;
  LanguagePage(
      {required this.imagePath,
      required this.active,
      required this.title,
      required this.description,
      required this.lessons});
}

class ListOfLanguage {
  List<LanguagePage> data;
  ListOfLanguage({required this.data});
}

// new quiz models

class QuizLesson {
  String title;
  String description;
  List<BaseQuiz> questions;
  QuizLesson(
      {required this.title,
      required this.description,
      required this.questions});
}

abstract class BaseQuiz {}

class ChooseCode extends BaseQuiz {
  String title;
  MarkdownModel questionText;
  List<CodeQuiz> answers;
  ChooseCode(
      {required this.title, required this.answers, required this.questionText});
}

class CodeQuiz extends CodeModel {
  // String codeQuis;
  bool isCorrect;
  CodeQuiz({required super.code, required this.isCorrect});
}

// do not use this just was created for test and mvp

class LessonCollection {
  List<Datamodel> lessonContect;
  LessonCollection({required this.lessonContect});
}

class Datamodel {
  bool isCode;
  String dataString;

  Datamodel({required this.isCode, required this.dataString});

  dynamic convertToModel() {
    if (isCode) {
      return CodeModel(code: dataString);
    } else {
      return MarkdownModel(mark: dataString);
    }
  }
}

class Model {
  String id;
  String name;
  Model({required this.id, required this.name});
}
