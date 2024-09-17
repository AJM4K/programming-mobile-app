import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../app/Band.dart';
import '../app/ViewWidget.dart';
import '../app/viewFunc.dart';
import 'Learn Pages Example/page 1.dart';
import 'Learn Pages Example/page 2.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("RED Kaktus"),
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  // color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "Programming languages",
                  style: TextStyle(
                    color: Color.fromARGB(255, 96, 96, 96),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.18 * 1.99,
                width: MediaQuery.of(context).size.width * 0.7,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: context.read<BAND>().mainPageData.length,
                    itemBuilder: (context, index) {
                      return Container(
                        //  height: MediaQuery.of(context).size.height * 0.001,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 255, 255, 255), // Blue

                              Color.fromARGB(255, 255, 255, 255), // Blue

                              Color.fromARGB(255, 255, 255, 255), // Blue
                            ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(
                            bottom: 8, top: 8, left: 3, right: 3),
                        child: MainPageModelview(context, index),
                      );
                    }),
              ),

              // Padding(padding: EdgeInsets.all(8)),
              SizedBox(
                height: 18,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      // color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "check your understanding",
                      style: TextStyle(
                        color: Color.fromARGB(255, 96, 96, 96),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.37,
                    width: MediaQuery.of(context).size.width * 1,
                    //  color: const Color.fromARGB(255, 7, 106, 255),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: context.read<BAND>().quizes.length,
                        itemBuilder: (context, index) {
                          return Container(
                            //  height: MediaQuery.of(context).size.height * 0.001,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 255, 255, 255), // Blue

                                  Color.fromARGB(255, 255, 255, 255), // Blue

                                  Color.fromARGB(255, 255, 255, 255), // Blue
                                ],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                              ),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            margin: EdgeInsets.only(
                                bottom: 8, top: 8, left: 3, right: 3),
                            child: MainPageQuizeslview(context, index),
                          );
                        }),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
