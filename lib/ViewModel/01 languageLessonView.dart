import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../Domain/Models.dart';

class LanguagePageView extends StatelessWidget {
  LanguagePageView({Key? key, required this.data}) : super(key: key);
  LanguagePage data;

  @override
  Widget build(BuildContext context) {
    String image = data.imagePath;

    return Scaffold(
      appBar: AppBar(
        title: Text(data.title),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(18),
              height: MediaQuery.of(context).size.height * 0.23,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 213, 98, 98), // Blue

                    Color.fromARGB(255, 214, 47, 47), // Blue

                    Color.fromARGB(255, 214, 47, 47), // Blue
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.all(8),
                      alignment: Alignment.bottomRight,
                      height: MediaQuery.of(context).size.height * 0.07,
                      child: Image.asset(data.imagePath)),
                  //   Icon(Icons.draw_outlined, size: 40, color: Colors.blue),
                  SizedBox(height: 10),
                  Text(
                    data.title,
                    style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(height: 5),
                  Text(
                    data.description,
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 235, 235, 235)),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: ListView.builder(
                      itemCount: data.lessons.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            print("--------------ok ");
                            context.push('/lesson', extra: data.lessons[index]);
                          },
                          child: Container(
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(27),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            padding: EdgeInsets.all(16),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    margin: EdgeInsets.all(8),
                                    height: MediaQuery.of(context).size.height *
                                        0.03,
                                    child: Image.asset(image)),
                                //   Icon(Icons.draw_outlined, size: 40, color: Colors.blue),
                                SizedBox(width: 10),
                                Text(
                                  data.lessons[index].title,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5),
                              ],
                            ),
                          ),
                        );
                      })),
            ),
          ],
        ),
      ),
    );
  }
}
