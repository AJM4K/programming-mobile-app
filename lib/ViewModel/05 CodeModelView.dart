import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/dracula.dart';
import '../Domain/Models.dart';
import '../app/Band.dart';
import '../app/ViewWidget.dart';
import '../app/viewFunc.dart';

class CodeView extends StatelessWidget {
  final CodeModel modelData;
  CodeView({super.key, required this.modelData});

  String languae = '';

  @override
  Widget build(BuildContext context) {
    var x = context.read<BAND>().activeLesson;
    languae = context.read<BAND>().mainPageData[x].title;
    return Container(
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
    );
  }
}
