import 'package:verse_program/Domain/Models.dart';

LessonPage lesson1 = LessonPage(
    listPage: [
      PageModel(code: CodeModel(code: '''
Void main(){
  // write logic here 
  // this is the main function in any dart application
}
'''), mark: MarkdownModel(mark: '''
# Welcome to Dart Programming!

👋 Welcome, future Dart developer! Let's embark on an exciting journey into the world of Dart programming!

## Lesson 1: Saying Hello with Dart

**Objective:** Learn how to write and run your first Dart program.

1. **Install Dart** 🛠️  
   First things first, make sure you have Dart installed on your computer. Don't worry, it's super easy! Just visit the [official Dart website](https://dart.dev/get-dart) and follow the instructions for your operating system.

2. **Choose Your Weapon** 🖥️  
   Pick your favorite code editor or IDE. Whether it's Visual Studio Code, IntelliJ IDEA, or even DartPad, find the one that feels right for you!

3. **Write Your First Program** ✍️  
   Open your code editor and create a new Dart file. Give it a name, like `hello.dart`. Now, let's write some code! Type the following:

   ```dart
   void main() {
     print('Hello, World!');
   }

''')),
      PageModel(code: CodeModel(code: '''
 void main() {
      String text = "you text here";
      int number = 3;
      bool isDone = true ;

      print(text); // output : you text here
      print(number); // output : 3
      print(isDone); true

     }  
'''), mark: MarkdownModel(mark: '''
 Variables in Dart!

Variables in dart is a way to store data that we can later access 

## Lesson 2: Variables 

**Objective:** Learn how to write variables.

theses are the basic variabels type in dart for this lesson 

1. **String** 🛠️  
   this is just a normal String that is a single line by default in this example 
2. **int** 🖥️  
   numbers are stored in another type called integer and Double for this example we used int but we can use double also and we can techinialy use String to store a number but then we can't do math operation on it and so on
3. **bool** ✍️  
this is how we check for a variale if it was true of values that we can use in other conditonal flow to control the flow of operation
   ```dart
   void main() {
      String text = "you text here";
      int number = 3;
      bool isDone = true ;

     }  
   '''))
    ],
    title: 'Introduction',
    textCompleted:
        'Great , you have completed the introduction of dart programming language ');
