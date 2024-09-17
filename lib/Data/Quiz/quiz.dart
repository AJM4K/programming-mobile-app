import 'package:verse_program/Domain/Models.dart';

QuizLesson quizLesson = QuizLesson(
    title: "practice dart basics ",
    description:
        "the basics are important to understand to know how things works and so on",
    questions: [
      ChooseCode(
          title: 'choose the correct',
          answers: [
            CodeQuiz(code: """
void sayHello(String name) {
  print('Hello, \$name!');
}

""", isCorrect: true),
            CodeQuiz(code: """
String sayHello(String name) {
  print('Hello, \$name!');
}
""", isCorrect: false)
          ],
          questionText: MarkdownModel(mark: """
Which of the following code snippets correctly defines a function named `sayHello` that takes a `String` parameter `name` and prints a greeting message?

""")),
      ChooseCode(
          title: 'choose the correct',
          answers: [
            CodeQuiz(code: """
void main() {
  var x = 10;
}

""", isCorrect: false),
            CodeQuiz(code: """
void main() {
  String x = "Hello";
}
""", isCorrect: true)
          ],
          questionText: MarkdownModel(mark: """
Which of the following correctly declares a variable in Dart?

note : one of them is more recommeded than the other even if boths are true

""")),
      ChooseCode(
          title: 'choose the correct',
          answers: [
            CodeQuiz(code: """


function myFunction() { ... }


""", isCorrect: false),
            CodeQuiz(code: """


void myFunction() { ... }


""", isCorrect: true)
          ],
          questionText: MarkdownModel(mark: """
What is the correct syntax for a basic Dart function?


""")),
    ]);
