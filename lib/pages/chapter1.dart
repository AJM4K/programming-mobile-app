import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'Learn Pages Example/page 1.dart';
import 'Learn Pages Example/page 2.dart';

class ChapterLessonPage extends StatefulWidget {
  const ChapterLessonPage({super.key});

  @override
  State<ChapterLessonPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ChapterLessonPage> {
  final PageController scrollController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learning with Verse"),
      ),
      body: SafeArea(
        child: PageView(
          physics: _CustomPageScrollPhysics(
              allowScroll: false), // Set initial scroll behavior

          controller: scrollController,
          children: <Widget>[
            Page1(scrollController: scrollController),
            Page2(scrollController: scrollController),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 18, right: 18, bottom: 28),
        child: FloatingActionButton.extended(
          backgroundColor: Color.fromARGB(255, 255, 35, 35),
          onPressed: () {
            scrollController.animateToPage(
              (scrollController.page! + 1).toInt(),
              duration: Duration(milliseconds: 300),
              curve: Curves.easeIn,
            );

            if (scrollController.page == 1) {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Scaffold(
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
                              'Chapter 1',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'you completed dart basics and variabels , let\'do another one',
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

class _CustomPageScrollPhysics extends ScrollPhysics {
  final bool allowScroll;

  const _CustomPageScrollPhysics(
      {ScrollPhysics? parent, required this.allowScroll})
      : super(parent: parent);

  @override
  _CustomPageScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return _CustomPageScrollPhysics(
        parent: buildParent(ancestor), allowScroll: allowScroll);
  }

  @override
  bool shouldAcceptUserOffset(ScrollMetrics position) {
    return allowScroll && super.shouldAcceptUserOffset(position);
  }
}
