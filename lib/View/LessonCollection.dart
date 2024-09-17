import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:verse_program/ViewModel/05%20CodeModelView.dart';
import 'package:verse_program/ViewModel/06%20MarkDownModelView.dart';
import '../Domain/Models.dart';

class LessonView extends StatelessWidget {
  final LessonCollection ModelData;
  const LessonView({super.key, required this.ModelData});

  @override
  Widget build(BuildContext context) {
    List<Widget> lessonView = [];
    for (var x in ModelData.lessonContect) {
      var y = x.convertToModel();
      if (y is CodeModel) {
        print("is code ");
        CodeModel z = y;
        lessonView.add(CodeView(modelData: z));
      } else if (y is MarkdownModel) {
        print("is markdown ");
        MarkdownModel z = y;
        lessonView.add(MarkDownView(ModelData: z));
      }
    }
    return SingleChildScrollView(
      child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(12),
          child: Column(
            children: lessonView,
          )),
    );
  }
}
