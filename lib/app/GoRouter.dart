// go route router that points to othre pages for each route that is passed to material page

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:verse_program/Domain/Models.dart';
import 'package:verse_program/ViewModel/quiz/01%20quizPage.dart';
import '../Less/TestDesignPage.dart';
import '../pages/Entery app page view.dart';
import '../ViewModel/02 LessonPageView.dart';
import '../ViewModel/01 languageLessonView.dart';
import '../pages/Setting Page.dart';
import '../pages/chapter1.dart';
import '../pages/mainPage.dart';
import '../pages/ModelPage.dart';
import '../pages/test.dart';
import 'Band.dart';
import 'Error Page.dart';

final rootNav = GlobalKey<NavigatorState>();
final shellNav = GlobalKey<NavigatorState>();

class RouterGo {
  RouterGo();
  final GoRouter router = GoRouter(
      navigatorKey: rootNav,
      initialLocation: '/FirstMain',
      errorBuilder: (context, state) => const ErrorPage(),
      // redirect: (context, state) {
      //   // todo : check if the user is first time opening the app through a value from
      //   // from shared preference if so then show them onboarding page which could be a login page or feature show case
      // },
      routes: [
        StatefulShellRoute.indexedStack(
            builder: (context, state, navigationShell) {
              return MainEntryPage(
                navigationShell: navigationShell,
              );
            },
            branches: [
              StatefulShellBranch(navigatorKey: shellNav, routes: [
                GoRoute(
                  path: '/FirstMain',
                  builder: (context, state) => const MainPage(),
                  //  builder:(context, state) =>  const TestRoutesFirstpage(),
                )
              ]),
              StatefulShellBranch(routes: [
                GoRoute(
                  path: '/SecondMain',
                  builder: (context, state) {
                    return Container();
                  },
                )
              ]),
              StatefulShellBranch(routes: [
                GoRoute(
                    path: '/ThirdMain',
                    builder: (context, state) {
                      return SettingPage();
                    }),
              ]),
            ]),
        GoRoute(
          path: '/dart',
          builder: (context, state) => const ChapterLessonPage(),
        ),
        GoRoute(
          path: '/dartLesson',
          builder: (context, state) => Container(),
        ),
        GoRoute(
            path: '/Language',
            builder: (context, state) {
              LanguagePage x;
              if (state.extra is LanguagePage) {
                x = state.extra as LanguagePage;
              } else {
                x = LanguagePage(
                    imagePath: "assets/csharp-logo.png",
                    active: true,
                    title: 'programming',
                    description: 'description',
                    lessons: [
                      LessonPage(
                          listPage: [],
                          title: 'Lesson 1',
                          textCompleted: 'when completed text')
                    ]);
              }
              return LanguagePageView(
                data: x,
              );
            }),
        GoRoute(
            path: '/lesson',
            builder: (context, state) {
              LessonPage x;
              if (state.extra is LessonPage) {
                x = state.extra as LessonPage;
              } else {
                x = LessonPage(
                  title: 'programming',
                  listPage: [
                    PageModel(
                        code: CodeModel(code: "code main // tesst "),
                        mark: MarkdownModel(mark: "markdown model"))
                  ],
                  textCompleted: 'test lesson completed ',
                );
              }
              return LessonPage4k(
                data: x,
              );
            }),
        GoRoute(
            path: '/quiz',
            builder: (context, state) {
              return QuizPage4k();
            }),
        // notificationTest
        GoRoute(
            path: '/notificationTest',
            builder: (context, state) {
              return TestDesingPage();
            }),
      ]);
}
