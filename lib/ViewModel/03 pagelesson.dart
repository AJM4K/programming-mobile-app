import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:verse_program/ViewModel/05%20CodeModelView.dart';
import 'package:verse_program/ViewModel/06%20MarkDownModelView.dart';
import '../Domain/Models.dart';
import '04 pageViewModel.dart';

class LessonBasedVerticalView extends StatelessWidget {
  final LessonPage ModelData;
  final PageController controller;
  const LessonBasedVerticalView(
      {super.key, required this.ModelData, required this.controller});

  @override
  Widget build(BuildContext context) {
    List<Widget> lessonView = [];
    for (PageModel x in ModelData.listPage) {
      lessonView.add(PageLessonView(
        ModelData: x,
      ));
    }
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(12),
      child: PageView(
        controller: controller,
        physics: _CustomPageScrollPhysics(allowScroll: false),
        scrollDirection: Axis.horizontal,
        children: lessonView,
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
