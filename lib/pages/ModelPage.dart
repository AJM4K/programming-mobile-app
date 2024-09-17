import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../View/ViewModel.dart';
import '../app/Band.dart';

class ModelPage extends StatefulWidget {
  const ModelPage({super.key});

  @override
  State<ModelPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ModelPage> {
  @override
  Widget build(BuildContext context) {
    var ModelDataFromBand = context.read<BAND>().getModel();
    return Scaffold(
        appBar: AppBar(
          title: Text("Model page"),
        ),
        body: SafeArea(
            child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height *
                  0.76, // for example, 15% of the screen height
              width: MediaQuery.of(context).size.width *
                  1, // 100% of the screen width

              child: Container(
                padding: EdgeInsets.all(12),
                child: ModelView(ModelData: ModelDataFromBand),
              ),
            ),
          ],
        )));
  }
}
