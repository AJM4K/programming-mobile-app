import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'Band.dart';
import 'viewFunc.dart';

Widget EL_Heading(String label) {
  return Text(
    label,
    style: TextStyle(fontSize: 37),
  );
}

InkWell MainPageModelview(BuildContext context, int index) {
  return InkWell(
    onTap: () {
      if (context.read<BAND>().mainPageData[index].active) {
        context.read<BAND>().setActiveLesson(index);

        context.push('/Language',
            extra: context.read<BAND>().mainPageData[index]);
      }
    },
    child: Container(
      width: MediaQuery.of(context).size.width * 0.8,
      // height: MediaQuery.of(context).size.height * 0.7,

      // decoration: BoxDecoration(
      //   color: Colors.white,
      //   borderRadius: BorderRadius.circular(10),
      //   boxShadow: [
      //     BoxShadow(
      //       color: Colors.black.withOpacity(0.1),
      //       spreadRadius: 1,
      //       blurRadius: 5,
      //       offset: Offset(0, 3),
      //     ),
      //   ],
      // ),
      padding: EdgeInsets.all(16),
      child: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(),
            Container(
                margin: EdgeInsets.only(bottom: 18),
                height: MediaQuery.of(context).size.height * 0.063,
                child: Image.asset(
                    context.read<BAND>().mainPageData[index].imagePath)),
            //   Icon(Icons.draw_outlined, size: 40, color: Colors.blue),
            SizedBox(height: 10),
            Container(
              child: Text(
                context.read<BAND>().mainPageData[index].title,
                style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 5),
            Container(
              child: Text(
                context.read<BAND>().mainPageData[index].description,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
            //  SizedBox(height: 5),

            InkWell(
              onTap: () {
                print("--------------ok ");
                if (context.read<BAND>().mainPageData[index].active) {
                  context.read<BAND>().setActiveLesson(index);

                  context.push('/Language',
                      extra: context.read<BAND>().mainPageData[index]);
                } else {
                  EL_Show_SnackBar(context,
                      "in dev , we work on this section for you , thank you for your patiant ");
                }
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 18),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 61, 61),
                  borderRadius: BorderRadius.circular(27),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //   Icon(Icons.draw_outlined, size: 40, color: Colors.blue),
                    //  SizedBox(width: 10),
                    Text(
                      "Choose a lesson",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    //  SizedBox(height: 5),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

InkWell MainPageQuizeslview(BuildContext context, int index) {
  return InkWell(
    onTap: () {
      context.read<BAND>().setactiveQuiz(index);
      context.push('/quiz');
    },
    child: Container(
      width: MediaQuery.of(context).size.width * 0.8,
      // height: MediaQuery.of(context).size.height * 0.7,

      // decoration: BoxDecoration(
      //   color: Colors.white,
      //   borderRadius: BorderRadius.circular(10),
      //   boxShadow: [
      //     BoxShadow(
      //       color: Colors.black.withOpacity(0.1),
      //       spreadRadius: 1,
      //       blurRadius: 5,
      //       offset: Offset(0, 3),
      //     ),
      //   ],
      // ),
      padding: EdgeInsets.all(16),
      child: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 18,
              width: 8,
            ),
            // Container(
            //     margin: EdgeInsets.only(bottom: 18),
            //     height: MediaQuery.of(context).size.height * 0.063,
            //     child: Image.asset(
            //         context.read<BAND>().mainPageData[index].imagePath)),
            Icon(Icons.code, size: 40, color: Colors.red),
            SizedBox(height: 10),
            Container(
              child: Text(
                context.read<BAND>().quizes[index].title,
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 5),
            Container(
              child: Text(
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                context.read<BAND>().quizes[index].description,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
            //  SizedBox(height: 5),

            InkWell(
              onTap: () {
                print("--------------ok ");
                context.read<BAND>().setactiveQuiz(index);
                context.push('/quiz');
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 18),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 61, 61),
                  borderRadius: BorderRadius.circular(27),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //   Icon(Icons.draw_outlined, size: 40, color: Colors.blue),
                    //  SizedBox(width: 10),
                    Text(
                      "Start Quiz",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    //  SizedBox(height: 5),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
