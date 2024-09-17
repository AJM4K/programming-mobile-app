import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/dracula.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
    required this.scrollController,
  }) : super(key: key);

  final PageController scrollController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lesson 1: Main function ',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                child: SingleChildScrollView(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      width: MediaQuery.of(context).size.width * 1,
                      child: Stack(children: [
                        HighlightView(
                          '''
  void main() {
       print('Hello, World!');
     }                                                           
                    ''',
                          padding: EdgeInsets.all(8),
                          language: 'dart',
                          theme: draculaTheme,
                          textStyle: TextStyle(fontSize: 14),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Container(
                                padding: EdgeInsets.all(3),
                                color: const Color.fromARGB(139, 255, 255, 255),
                                child: Text(
                                  "Dart",
                                  style: TextStyle(),
                                ),
                              ),
                            ),
                          ),
                        )
                      ]),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Expanded(
                flex: 7,
                // height: MediaQuery.of(context).size.height,
                // width: MediaQuery.of(context).size.width,
                child: Markdown(
                  onTapLink: (text, href, title) async {
                    print(text);
                    print(href);
                    print(title);
                  },
                  // selectable: true,
                  data: '''
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

              ''',
                  styleSheet: MarkdownStyleSheet(
                    h1: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    h2: TextStyle(fontSize: 20),
                    a: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
