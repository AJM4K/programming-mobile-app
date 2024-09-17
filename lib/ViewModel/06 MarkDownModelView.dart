import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import '../Domain/Models.dart';
import '../app/Band.dart';
import '../app/ViewWidget.dart';
import '../app/viewFunc.dart';

class MarkDownView extends StatelessWidget {
  final MarkdownModel ModelData;
  const MarkDownView({super.key, required this.ModelData});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Markdown(
        onTapLink: (text, href, title) async {
          print(text);
          print(href);
          print(title);
        },
        // selectable: true,
        data: '''
${ModelData.mark}
              ''',
        styleSheet: MarkdownStyleSheet(
          h1: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          h2: TextStyle(fontSize: 20),
          a: TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
}
