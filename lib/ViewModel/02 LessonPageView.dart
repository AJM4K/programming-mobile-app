import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../Domain/Models.dart';
import '../app/Band.dart';
import '03 pagelesson.dart';

class LessonPage4k extends StatelessWidget {
  LessonPage4k({super.key, required this.data});

  final PageController scrollController = PageController();

  LessonPage data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data.title),
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
                              context.read<BAND>().imagepath[context
                                  .read<BAND>()
                                  .activeLesson], // Adjust the path based on your asset location
                              width: 100,
                              height: 100,
                            ),
                            SizedBox(height: 20),
                            Container(
                              child: Center(
                                child: Text(
                                  data.title,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              data.textCompleted,
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 18),
                              child: Text(
                                "RED Kaktus",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 18,
                                ),
                              ),
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

                          context.pop();
                          // context.go('/FirstMain');
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
