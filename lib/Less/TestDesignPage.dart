import 'package:flutter/material.dart';
import 'package:verse_program/Less/TestComponent.dart';

class TestDesingPage extends StatefulWidget {
  const TestDesingPage({super.key});

  @override
  State<TestDesingPage> createState() => _TestDesingPageState();
}

class _TestDesingPageState extends State<TestDesingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          notifaiton_appbar(
              context: context,
              ontapbackbutton: () {
                print("back button");
              }),
          Expanded(
            child: ListView(
              children: [
                NotificationComponenet(
                    isNewNotification: false,
                    onTap: () {
                      print("old noti");
                    },
                    isPunch: true),
                NotificationComponenet(
                    isNewNotification: true,
                    onTap: () {
                      print('new noti');
                    },
                    isPunch: true),
                NotificationComponenet(
                    isNewNotification: true,
                    onTap: () {
                      print('new noti');
                    },
                    isPunch: false),
                NotificationComponenet(
                    nestedicon: Padding(
                      padding: EdgeInsets.all(1),
                      child: Icon(
                        Icons.view_carousel_sharp,
                        color: Colors.white,
                      ),
                    ),
                    isNewNotification: false,
                    onTap: () {
                      print('new noti');
                    },
                    isPunch: false),
                NotificationComponenet(
                    isNewNotification: false,
                    onTap: () {
                      print("old noti");
                    },
                    isPunch: true),
                NotificationComponenet(
                    isNewNotification: true,
                    onTap: () {
                      print('new noti');
                    },
                    isPunch: true),
                NotificationComponenet(
                    isNewNotification: true,
                    onTap: () {
                      print('new noti');
                    },
                    isPunch: false),
                NotificationComponenet(
                    nestedicon: Padding(
                      padding: EdgeInsets.all(1),
                      child: Icon(
                        Icons.view_carousel_sharp,
                        color: Colors.white,
                      ),
                    ),
                    isNewNotification: false,
                    onTap: () {
                      print('new noti');
                    },
                    isPunch: false),
                NotificationComponenet(
                    isNewNotification: false,
                    onTap: () {
                      print("old noti");
                    },
                    isPunch: true),
                NotificationComponenet(
                    isNewNotification: true,
                    onTap: () {
                      print('new noti');
                    },
                    isPunch: true),
                NotificationComponenet(
                    isNewNotification: true,
                    onTap: () {
                      print('new noti');
                    },
                    isPunch: false),
                NotificationComponenet(
                    nestedicon: Padding(
                      padding: EdgeInsets.all(1),
                      child: Icon(
                        Icons.view_carousel_sharp,
                        color: Colors.white,
                      ),
                    ),
                    isNewNotification: false,
                    onTap: () {
                      print('new noti');
                    },
                    isPunch: false),
              ],
            ),
          )
        ],
      )),
    );
  }
}
