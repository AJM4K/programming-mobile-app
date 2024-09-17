import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/dracula.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class Page2 extends StatelessWidget {
  const Page2({
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
                'Lesson 2: variables ',
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
      String text = "you text here";
      int number = 3;
      bool isDone = true ;

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
                flex: 3,
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
# Variables in Dart!

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
