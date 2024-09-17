import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../Domain/Models.dart';
import '../app/viewFunc.dart';

class SettingPage extends StatelessWidget {
  SettingPage({Key? key}) : super(key: key);

  List<String> data = [
    "Profile Page ",
    "Request a feature",
    'report a problem'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(16),
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 255, 255, 255), // Blue

                    Color.fromARGB(255, 255, 255, 255), // Blue

                    Color.fromARGB(255, 255, 255, 255), // Blue
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.all(8),
                      //  alignment: Alignment.bottomRight,
                      child: Icon(Icons.account_box_rounded,
                          size: 40, color: Color.fromARGB(255, 255, 53, 53))),
                  SizedBox(height: 10),
                  Text(
                    'Sign in',
                    style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 0, 0, 0)),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "to save your progress and get updates about new features and updates",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 154, 154, 154)),
                  ),
                  SizedBox(height: 3),
                  InkWell(
                    onTap: () {
                      print("--------------ok ");
                      EL_Show_SnackBar(
                          context, "in dev , we work on this feature for you ");
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 61, 61),
                        borderRadius: BorderRadius.circular(27),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      padding: EdgeInsets.all(16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //   Icon(Icons.draw_outlined, size: 40, color: Colors.blue),
                          SizedBox(width: 10),
                          Text(
                            "Sign in or log in",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            print("--------------ok ");
                            EL_Show_SnackBar(context,
                                "in development, you can learn some stuff while we develop this ");
                          },
                          child: Container(
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(27),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            padding: EdgeInsets.all(16),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                //   Icon(Icons.draw_outlined, size: 40, color: Colors.blue),
                                SizedBox(width: 10),
                                Text(
                                  data[index],
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5),
                              ],
                            ),
                          ),
                        );
                      })),
            ),
            Padding(padding: EdgeInsets.all(8)),
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    //    color: Color.fromARGB(255, 255, 255, 255),
                    alignment: Alignment.centerLeft,
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.18,
                    child: Image.asset(
                      "assets/icon.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.all(8),
                      //  color: Color.fromARGB(255, 255, 35, 35),
                      alignment: Alignment.centerLeft,
                      height: MediaQuery.of(context).size.height * 0.089,
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Text(
                        "Red Katkus",
                        // style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
