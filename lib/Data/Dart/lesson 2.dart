import 'package:verse_program/Domain/Models.dart';

LessonPage lesson2 = LessonPage(
    listPage: [
      PageModel(code: CodeModel(code: '''
void main() {
  int number = 10;

  if (number > 0) {
    print('Number is positive');
  } else if (number < 0) {
    print('Number is negative');
  } else {
    print('Number is zero');
  }
}
'''), mark: MarkdownModel(mark: '''
## Lesson 3: Conditional Statements

**Objective:** Learn how to use conditional statements in Dart.

Conditional statements allow us to execute certain blocks of code based on conditions. Dart supports the following conditional statements:

1. **if Statement** 🛠️  
   The `if` statement allows us to execute a block of code if a condition is true.

2. **else Statement** 🖥️  
   The `else` statement is used in conjunction with `if` to execute a block of code if the condition in the `if` statement is false.

3. **else if Statement** ✍️  
   The `else if` statement allows us to check additional conditions if the condition in the `if` statement is false.

Here's an example:

```dart
void main() {
  int number = 10;

  if (number > 0) {
    print('Number is positive');
  } else if (number < 0) {
    print('Number is negative');
  } else {
    print('Number is zero');
  }
}

''')),
      PageModel(code: CodeModel(code: '''
 void main() {
    for (int i = 1; i <= 5; i++) {
     print('Iteration \$i');
   }

     }  
'''), mark: MarkdownModel(mark: '''
## Lesson 4: Loops in Dart

**Objective:** Understand how to use loops in Dart to execute repetitive tasks efficiently.

Loops are fundamental constructs in programming that allow us to repeat a block of code multiple times. Dart provides several types of loops:

1. **for Loop** 🛠️  
   The `for` loop is used when we know exactly how many times we want to execute a block of code. It consists of an initialization, condition, and increment/decrement section.

   ```dart
   for (int i = 1; i <= 5; i++) {
     print('Iteration \$i');
   }
   '''))
    ],
    title: 'flow control of data and exceution',
    textCompleted:
        'Great , you have completed flow control of data and exceution , this a big mile stone and you should take screenshoot and share it on social media  ');
