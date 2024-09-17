import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/Band.dart';
import 'app/GoRouter.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    context.read<BAND>().SetBuildContext(context);
    context.read<BAND>().getStream();

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Ahmed app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: context.read<RouterGo>().router,
    );
  }
}
