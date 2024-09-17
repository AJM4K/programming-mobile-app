import 'package:verse_program/Data/Dart/lesson%202.dart';

import '../../Domain/Models.dart';
import 'lesson 1.dart';

LanguagePage dartLanguage = LanguagePage(
    active: true,
    title: 'Dart',
    imagePath: "assets/Dart-logo.png",
    description: 'Learn Dart Programming',
    lessons: [
      lesson1,
      lesson2,
    ]);
