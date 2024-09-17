import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/dracula.dart';

import '../../Domain/Models.dart';
import '../../app/Band.dart';
import '01 quizPage.dart';

class CodeChoiceView extends StatelessWidget {
  final CodeQuiz modelData;
  CodeChoiceView({
    super.key,
    required this.modelData,
  });

  String languae = '';

  @override
  Widget build(BuildContext context) {
    // languae = context.read<BAND>().mainPageData[x].title;
    languae = "dart";
    return InkWell(
      onTap: () {
        if (modelData.isCorrect) {
          print("correct answer");
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return CorrectAnswerDialog();
            },
          );
        } else {
          print("not correct answer");
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return WrongAnswerDialog();
              });
        }
        myWidgetKey.currentState?.outsideAccessUsingGlobalKey();

        context.read<BAND>().addStream();
      },
      child: Container(
        margin: EdgeInsets.all(8),
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Container(
              height: MediaQuery.of(context).size.width * 0.3,
              // padding: EdgeInsets.all(8),
              width: MediaQuery.of(context).size.width * 1,
              child: Stack(children: [
                SingleChildScrollView(
                  child: HighlightView(
                    """
                                                                      
     ${modelData.code}   


                  """,
                    padding: EdgeInsets.all(8),
                    language: languae,
                    theme: draculaTheme,
                    textStyle: TextStyle(fontSize: 14),
                  ),
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
                          languae,
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
    );
  }
}

class CorrectAnswerDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Close the dialog after 2 seconds
    Future.delayed(Duration(milliseconds: 1300), () {
      Navigator.of(context).pop();
    });
    return GestureDetector(
      onTap: () {
        //  Navigator.of(context).pop();
      },
      child: Container(
        color: Color.fromARGB(255, 219, 255, 219),
        padding: EdgeInsets.all(8),
        child: Center(
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
                      "Correct",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "you choose the correct answer",
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
      ),
    );
  }
}

class WrongAnswerDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Close the dialog after 2 seconds
    Future.delayed(Duration(milliseconds: 1300), () {
      Navigator.of(context).pop();
    });
    return Container(
      color: Color.fromARGB(255, 255, 229, 229),
      padding: EdgeInsets.all(8),
      child: Center(
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
                    "Not Correct",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "you choose the wrong answer",
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
    );
  }
}
