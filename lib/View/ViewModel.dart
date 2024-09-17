import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Domain/Models.dart';
import '../app/Band.dart';
import '../app/ViewWidget.dart';
import '../app/viewFunc.dart';

class ModelView extends StatelessWidget {
  final Model ModelData;
  const ModelView({super.key, required this.ModelData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: GestureDetector(
        onTap: () {
          ScaffoldMessenger.of(context)
              .removeCurrentSnackBar(); // Clear existing snack bars
          print(ModelData.name);

          EL_Show_SnackBar(context, "you pressed : " + ModelData.name);
        },
        child: Row(
          children: [
            const Icon(Icons.category_sharp),
            const Padding(padding: EdgeInsets.all(7)),
            EL_Heading(ModelData.name)
          ],
        ),
      ),
    );
  }
}
