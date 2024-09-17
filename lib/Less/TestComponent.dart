import 'package:flutter/material.dart';

Widget notifaiton_appbar({
  required BuildContext context,
  required Function ontapbackbutton,
}) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height * 0.06,
    color: Color.fromARGB(255, 207, 43, 95),
    child: Stack(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: GestureDetector(
            onTap: () {
              print("pop button");
              ontapbackbutton;
            },
            child: Container(
              padding: EdgeInsets.only(left: 18, top: 8, right: 8, bottom: 8),
              // color: Colors.amber,
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      width: 2),
                ),

                // color: Colors.redAccent,
                child: Icon(
                  Icons.arrow_back_outlined,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            "Notifications",
            style: TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
  );
}

Widget NotificationComponenet(
    {Widget label = const Text(
      "subject",
      style: TextStyle(color: Colors.black),
    ),
    Widget sublabel = const Text("7/3/2024 08:00 AM"),
    style = const TextStyle(color: Colors.black),
    bool isNewNotification = true,
    required Function onTap,
    required bool isPunch,
    Widget icon = const Icon(Icons.image_rounded),
    Widget nestedicon = const Icon(
      Icons.cases_rounded,
      size: 18,
      color: Colors.white,
    )}) {
  return GestureDetector(
    onTap: () {
      if (isNewNotification) {
        print("notifiaciton is new ");
      } else {
        print("previous notification");
      }
      onTap;
    },
    child: Container(
      // margin: EdgeInsets.all(8),

      color:
          isNewNotification ? Color.fromARGB(255, 255, 242, 242) : Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 8,
          ),
          Container(
            // color: Colors.white,
            child: ListTile(
                leading: Container(
                  width: 80,
                  height: 80,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.purple, width: 1),
                        ),
                        //       color: Colors.purple,
                        child: CircleAvatar(
                            // backgroundImage: isPunch
                            //     ? null
                            //     : AssetImage("assets/python-logo.png"),
                            backgroundColor: Colors.white,
                            radius: 38,
                            child: isPunch
                                ? Icon(Icons.fingerprint, size: 27)
                                : icon),
                      ),
                      if (!isPunch)
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            margin: EdgeInsets.only(right: 8),
                            child: CircleAvatar(
                                radius: 13,
                                backgroundColor: Colors.red,
                                child: nestedicon),
                          ),
                        ),
                    ],
                  ),
                ),
                title: label,
                subtitle: sublabel,
                trailing: isNewNotification
                    ? Icon(
                        Icons.circle_rounded,
                        color: Colors.red,
                        size: 9,
                      )
                    : null),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            padding: EdgeInsets.only(left: 8, right: 8),
            height: 1,
            width: 300,
            color: Colors.grey,
          ),
          // Divider(
          //   indent: 38,
          //   endIndent: 38,
          // )
        ],
      ),
    ),
  );
}
