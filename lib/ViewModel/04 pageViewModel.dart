import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:verse_program/ViewModel/05%20CodeModelView.dart';
import 'package:verse_program/ViewModel/06%20MarkDownModelView.dart';
import '../Domain/Models.dart';

class PageLessonView extends StatelessWidget {
  final PageModel ModelData;
  const PageLessonView({super.key, required this.ModelData});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(12),
        child: Column(children: [
          CodeView(modelData: ModelData.code),
          Expanded(child: MarkDownView(ModelData: ModelData.mark))
        ]));
  }
}
