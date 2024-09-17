import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:verse_program/Domain/Models.dart';

import '../View/LessonCollection.dart';
import '../ViewModel/03 pagelesson.dart';
import '../app/BANDBloc.dart';

class LessonTestPage4k extends StatelessWidget {
  LessonTestPage4k({super.key, required LessonPage data});

  final PageController scrollController = PageController();

  LessonPage data = LessonPage(
      listPage: [
        PageModel(
          code: CodeModel(code: """

write your code here 
"""),
          mark: MarkdownModel(mark: """
### this is heading 
# this is heading 

asdasd


"""),
        ),
        PageModel(
          code: CodeModel(code: """

write your code here 
"""),
          mark: MarkdownModel(mark: """
### this is heading 
# this is heading 

asdasd


"""),
        ),
        PageModel(
          code: CodeModel(code: """

write your code here 
"""),
          mark: MarkdownModel(mark: """
### this is heading 
# this is heading 

asdasd


"""),
        )
      ],
      title: 'Introduction to Dart',
      textCompleted:
          'you completed the basics of dart in this introduction , wonderful things let\' another lesson or share you progress on the internet and mention us ');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("test page"),
      ),
      body: SafeArea(
        child: Container(
          child: LessonBasedVerticalView(
            controller: scrollController,
            ModelData: data,
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
            print(data.listPage.length);

            if ((scrollController.page!.toInt() + 1) == data.listPage.length) {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      leading: Container(),
                    ),
                    body: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/Dart-logo.png', // Adjust the path based on your asset location
                              width: 100,
                              height: 100,
                            ),
                            SizedBox(height: 20),
                            Text(
                              data.title,
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              data.textCompleted,
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    bottomNavigationBar: Container(
                      color: Colors.white,
                      margin: EdgeInsets.only(left: 18, right: 18, bottom: 28),
                      child: FloatingActionButton.extended(
                        backgroundColor: Color.fromARGB(255, 255, 35, 35),
                        onPressed: () {
                          context.pop();
                          context.go('/FirstMain');
                        },
                        label: Text(
                          "Main page",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  );
                },
              );
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
